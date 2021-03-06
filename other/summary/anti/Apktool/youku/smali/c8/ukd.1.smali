.class public final Lc8/ukd;
.super Ljava/lang/Object;
.source "Excluder.java"

# interfaces
.implements Lc8/Wjd;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DEFAULT:Lc8/ukd;

.field private static final IGNORE_VERSIONS:D = -1.0


# instance fields
.field private deserializationStrategies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/xjd;",
            ">;"
        }
    .end annotation
.end field

.field private modifiers:I

.field private requireExpose:Z

.field private serializationStrategies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/xjd;",
            ">;"
        }
    .end annotation
.end field

.field private serializeInnerClasses:Z

.field private version:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lc8/ukd;

    invoke-direct {v0}, Lc8/ukd;-><init>()V

    sput-object v0, Lc8/ukd;->DEFAULT:Lc8/ukd;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lc8/ukd;->version:D

    .line 55
    const/16 v0, 0x88

    iput v0, p0, Lc8/ukd;->modifiers:I

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/ukd;->serializeInnerClasses:Z

    .line 58
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc8/ukd;->serializationStrategies:Ljava/util/List;

    .line 59
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc8/ukd;->deserializationStrategies:Ljava/util/List;

    return-void
.end method

.method private isAnonymousOrLocal(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 217
    invoke-virtual {p1}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->isLocalClass()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 216
    goto :goto_0
.end method

.method private isInnerClass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 221
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lc8/ukd;->isStatic(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isStatic(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 225
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidSince(Lc8/akd;)Z
    .locals 4
    .param p1, "annotation"    # Lc8/akd;

    .prologue
    .line 233
    if-eqz p1, :cond_0

    .line 234
    invoke-interface {p1}, Lc8/akd;->value()D

    move-result-wide v0

    .line 235
    .local v0, "annotationVersion":D
    iget-wide v2, p0, Lc8/ukd;->version:D

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    .line 236
    const/4 v2, 0x0

    .line 239
    .end local v0    # "annotationVersion":D
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isValidUntil(Lc8/bkd;)Z
    .locals 4
    .param p1, "annotation"    # Lc8/bkd;

    .prologue
    .line 243
    if-eqz p1, :cond_0

    .line 244
    invoke-interface {p1}, Lc8/bkd;->value()D

    move-result-wide v0

    .line 245
    .local v0, "annotationVersion":D
    iget-wide v2, p0, Lc8/ukd;->version:D

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_0

    .line 246
    const/4 v2, 0x0

    .line 249
    .end local v0    # "annotationVersion":D
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isValidVersion(Lc8/akd;Lc8/bkd;)Z
    .locals 1
    .param p1, "since"    # Lc8/akd;
    .param p2, "until"    # Lc8/bkd;

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lc8/ukd;->isValidSince(Lc8/akd;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lc8/ukd;->isValidUntil(Lc8/bkd;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected clone()Lc8/ukd;
    .locals 2

    .prologue
    .line 63
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/ukd;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p0}, Lc8/ukd;->clone()Lc8/ukd;

    move-result-object v0

    return-object v0
.end method

.method public create(Lc8/Gjd;Lc8/omd;)Lc8/Vjd;
    .locals 7
    .param p1, "gson"    # Lc8/Gjd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Gjd;",
            "Lc8/omd",
            "<TT;>;)",
            "Lc8/Vjd",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 112
    .local p2, "type":Lc8/omd;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p2}, Lc8/omd;->getRawType()Ljava/lang/Class;

    move-result-object v6

    .line 113
    .local v6, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v6, v0}, Lc8/ukd;->excludeClass(Ljava/lang/Class;Z)Z

    move-result v3

    .line 114
    .local v3, "skipSerialize":Z
    const/4 v0, 0x0

    invoke-virtual {p0, v6, v0}, Lc8/ukd;->excludeClass(Ljava/lang/Class;Z)Z

    move-result v2

    .line 116
    .local v2, "skipDeserialize":Z
    if-nez v3, :cond_0

    if-nez v2, :cond_0

    .line 117
    const/4 v0, 0x0

    .line 120
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lc8/tkd;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lc8/tkd;-><init>(Lc8/ukd;ZZLc8/Gjd;Lc8/omd;)V

    goto :goto_0
.end method

.method public disableInnerClassSerialization()Lc8/ukd;
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lc8/ukd;->clone()Lc8/ukd;

    move-result-object v0

    .line 86
    .local v0, "result":Lc8/ukd;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lc8/ukd;->serializeInnerClasses:Z

    .line 87
    return-object v0
.end method

.method public excludeClass(Ljava/lang/Class;Z)Z
    .locals 8
    .param p2, "serialize"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)Z"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    .line 192
    iget-wide v2, p0, Lc8/ukd;->version:D

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    cmpl-double v2, v2, v6

    if-eqz v2, :cond_0

    const-class v2, Lc8/akd;

    .line 193
    invoke-virtual {p1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lc8/akd;

    const-class v3, Lc8/bkd;

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lc8/bkd;

    invoke-direct {p0, v2, v3}, Lc8/ukd;->isValidVersion(Lc8/akd;Lc8/bkd;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v4

    .line 212
    :goto_0
    return v2

    .line 197
    :cond_0
    iget-boolean v2, p0, Lc8/ukd;->serializeInnerClasses:Z

    if-nez v2, :cond_1

    invoke-direct {p0, p1}, Lc8/ukd;->isInnerClass(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    .line 198
    goto :goto_0

    .line 201
    :cond_1
    invoke-direct {p0, p1}, Lc8/ukd;->isAnonymousOrLocal(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    .line 202
    goto :goto_0

    .line 205
    :cond_2
    if-eqz p2, :cond_4

    iget-object v1, p0, Lc8/ukd;->serializationStrategies:Ljava/util/List;

    .line 206
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/ExclusionStrategy;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/xjd;

    .line 207
    .local v0, "exclusionStrategy":Lc8/xjd;
    invoke-interface {v0, p1}, Lc8/xjd;->shouldSkipClass(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v2, v4

    .line 208
    goto :goto_0

    .line 205
    .end local v0    # "exclusionStrategy":Lc8/xjd;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/ExclusionStrategy;>;"
    :cond_4
    iget-object v1, p0, Lc8/ukd;->deserializationStrategies:Ljava/util/List;

    goto :goto_1

    .line 212
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/ExclusionStrategy;>;"
    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public excludeField(Ljava/lang/reflect/Field;Z)Z
    .locals 10
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "serialize"    # Z

    .prologue
    const/4 v6, 0x1

    .line 150
    iget v4, p0, Lc8/ukd;->modifiers:I

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    move v4, v6

    .line 188
    :goto_0
    return v4

    .line 154
    :cond_0
    iget-wide v4, p0, Lc8/ukd;->version:D

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    cmpl-double v4, v4, v8

    if-eqz v4, :cond_1

    const-class v4, Lc8/akd;

    .line 155
    invoke-virtual {p1, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lc8/akd;

    const-class v5, Lc8/bkd;

    invoke-virtual {p1, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lc8/bkd;

    invoke-direct {p0, v4, v5}, Lc8/ukd;->isValidVersion(Lc8/akd;Lc8/bkd;)Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v6

    .line 156
    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v6

    .line 160
    goto :goto_0

    .line 163
    :cond_2
    iget-boolean v4, p0, Lc8/ukd;->requireExpose:Z

    if-eqz v4, :cond_5

    .line 164
    const-class v4, Lc8/Xjd;

    invoke-virtual {p1, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lc8/Xjd;

    .line 165
    .local v0, "annotation":Lc8/Xjd;
    if-eqz v0, :cond_3

    if-eqz p2, :cond_4

    invoke-interface {v0}, Lc8/Xjd;->serialize()Z

    move-result v4

    if-nez v4, :cond_5

    :cond_3
    move v4, v6

    .line 166
    goto :goto_0

    .line 165
    :cond_4
    invoke-interface {v0}, Lc8/Xjd;->deserialize()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 170
    .end local v0    # "annotation":Lc8/Xjd;
    :cond_5
    iget-boolean v4, p0, Lc8/ukd;->serializeInnerClasses:Z

    if-nez v4, :cond_6

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {p0, v4}, Lc8/ukd;->isInnerClass(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v6

    .line 171
    goto :goto_0

    .line 174
    :cond_6
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {p0, v4}, Lc8/ukd;->isAnonymousOrLocal(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v4, v6

    .line 175
    goto :goto_0

    .line 178
    :cond_7
    if-eqz p2, :cond_9

    iget-object v3, p0, Lc8/ukd;->serializationStrategies:Ljava/util/List;

    .line 179
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/ExclusionStrategy;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    .line 180
    new-instance v2, Lc8/yjd;

    invoke-direct {v2, p1}, Lc8/yjd;-><init>(Ljava/lang/reflect/Field;)V

    .line 181
    .local v2, "fieldAttributes":Lc8/yjd;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/xjd;

    .line 182
    .local v1, "exclusionStrategy":Lc8/xjd;
    invoke-interface {v1, v2}, Lc8/xjd;->shouldSkipField(Lc8/yjd;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v4, v6

    .line 183
    goto/16 :goto_0

    .line 178
    .end local v1    # "exclusionStrategy":Lc8/xjd;
    .end local v2    # "fieldAttributes":Lc8/yjd;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/ExclusionStrategy;>;"
    :cond_9
    iget-object v3, p0, Lc8/ukd;->deserializationStrategies:Ljava/util/List;

    goto :goto_1

    .line 188
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/ExclusionStrategy;>;"
    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method public excludeFieldsWithoutExposeAnnotation()Lc8/ukd;
    .locals 2

    .prologue
    .line 91
    invoke-virtual {p0}, Lc8/ukd;->clone()Lc8/ukd;

    move-result-object v0

    .line 92
    .local v0, "result":Lc8/ukd;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lc8/ukd;->requireExpose:Z

    .line 93
    return-object v0
.end method

.method public withExclusionStrategy(Lc8/xjd;ZZ)Lc8/ukd;
    .locals 3
    .param p1, "exclusionStrategy"    # Lc8/xjd;
    .param p2, "serialization"    # Z
    .param p3, "deserialization"    # Z

    .prologue
    .line 98
    invoke-virtual {p0}, Lc8/ukd;->clone()Lc8/ukd;

    move-result-object v0

    .line 99
    .local v0, "result":Lc8/ukd;
    if-eqz p2, :cond_0

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lc8/ukd;->serializationStrategies:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lc8/ukd;->serializationStrategies:Ljava/util/List;

    .line 101
    iget-object v1, v0, Lc8/ukd;->serializationStrategies:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_0
    if-eqz p3, :cond_1

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lc8/ukd;->deserializationStrategies:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lc8/ukd;->deserializationStrategies:Ljava/util/List;

    .line 106
    iget-object v1, v0, Lc8/ukd;->deserializationStrategies:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_1
    return-object v0
.end method

.method public varargs withModifiers([I)Lc8/ukd;
    .locals 5
    .param p1, "modifiers"    # [I

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-virtual {p0}, Lc8/ukd;->clone()Lc8/ukd;

    move-result-object v1

    .line 77
    .local v1, "result":Lc8/ukd;
    iput v2, v1, Lc8/ukd;->modifiers:I

    .line 78
    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_0

    aget v0, p1, v2

    .line 79
    .local v0, "modifier":I
    iget v4, v1, Lc8/ukd;->modifiers:I

    or-int/2addr v4, v0

    iput v4, v1, Lc8/ukd;->modifiers:I

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    .end local v0    # "modifier":I
    :cond_0
    return-object v1
.end method

.method public withVersion(D)Lc8/ukd;
    .locals 1
    .param p1, "ignoreVersionsAfter"    # D

    .prologue
    .line 70
    invoke-virtual {p0}, Lc8/ukd;->clone()Lc8/ukd;

    move-result-object v0

    .line 71
    .local v0, "result":Lc8/ukd;
    iput-wide p1, v0, Lc8/ukd;->version:D

    .line 72
    return-object v0
.end method
