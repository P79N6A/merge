.class public final Lc8/nld;
.super Lc8/Vjd;
.source "ReflectiveTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/pld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Vjd",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final boundFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/old;",
            ">;"
        }
    .end annotation
.end field

.field private final constructor:Lc8/Mkd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Mkd",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lc8/Mkd;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Mkd",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/old;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "this":Lc8/nld;, "Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter<TT;>;"
    .local p1, "constructor":Lc8/Mkd;, "Lcom/google/gson/internal/ObjectConstructor<TT;>;"
    .local p2, "boundFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;>;"
    invoke-direct {p0}, Lc8/Vjd;-><init>()V

    .line 200
    iput-object p1, p0, Lc8/nld;->constructor:Lc8/Mkd;

    .line 201
    iput-object p2, p0, Lc8/nld;->boundFields:Ljava/util/Map;

    .line 202
    return-void
.end method


# virtual methods
.method public read(Lc8/qmd;)Ljava/lang/Object;
    .locals 6
    .param p1, "in"    # Lc8/qmd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/qmd;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    .local p0, "this":Lc8/nld;, "Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter<TT;>;"
    invoke-virtual {p1}, Lc8/qmd;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v4, v5, :cond_0

    .line 206
    invoke-virtual {p1}, Lc8/qmd;->nextNull()V

    .line 207
    const/4 v2, 0x0

    .line 229
    :goto_0
    return-object v2

    .line 210
    :cond_0
    iget-object v4, p0, Lc8/nld;->constructor:Lc8/Mkd;

    invoke-interface {v4}, Lc8/Mkd;->construct()Ljava/lang/Object;

    move-result-object v2

    .line 213
    .local v2, "instance":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-virtual {p1}, Lc8/qmd;->beginObject()V

    .line 214
    :goto_1
    invoke-virtual {p1}, Lc8/qmd;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 215
    invoke-virtual {p1}, Lc8/qmd;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, "name":Ljava/lang/String;
    iget-object v4, p0, Lc8/nld;->boundFields:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/old;

    .line 217
    .local v1, "field":Lc8/old;
    if-eqz v1, :cond_1

    iget-boolean v4, v1, Lc8/old;->deserialized:Z

    if-nez v4, :cond_2

    .line 218
    :cond_1
    invoke-virtual {p1}, Lc8/qmd;->skipValue()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 223
    .end local v1    # "field":Lc8/old;
    .end local v3    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v4, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v4, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 220
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .restart local v1    # "field":Lc8/old;
    .restart local v3    # "name":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {v1, p1, v2}, Lc8/old;->read(Lc8/qmd;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 225
    .end local v1    # "field":Lc8/old;
    .end local v3    # "name":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 228
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_3
    invoke-virtual {p1}, Lc8/qmd;->endObject()V

    goto :goto_0
.end method

.method public write(Lc8/smd;Ljava/lang/Object;)V
    .locals 4
    .param p1, "out"    # Lc8/smd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/smd;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    .local p0, "this":Lc8/nld;, "Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-nez p2, :cond_0

    .line 234
    invoke-virtual {p1}, Lc8/smd;->nullValue()Lc8/smd;

    .line 250
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-virtual {p1}, Lc8/smd;->beginObject()Lc8/smd;

    .line 240
    :try_start_0
    iget-object v2, p0, Lc8/nld;->boundFields:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/old;

    .line 241
    .local v0, "boundField":Lc8/old;
    invoke-virtual {v0, p2}, Lc8/old;->writeField(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 242
    iget-object v3, v0, Lc8/old;->name:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lc8/smd;->name(Ljava/lang/String;)Lc8/smd;

    .line 243
    invoke-virtual {v0, p1, p2}, Lc8/old;->write(Lc8/smd;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 246
    .end local v0    # "boundField":Lc8/old;
    :catch_0
    move-exception v1

    .line 247
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 249
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :cond_2
    invoke-virtual {p1}, Lc8/smd;->endObject()Lc8/smd;

    goto :goto_0
.end method
