.class Lcom/ali/mobisecenhance/ServiceLoader$ServiceIterator;
.super Ljava/lang/Object;
.source "ServiceLoader.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ali/mobisecenhance/ServiceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TS;>;"
    }
.end annotation


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;

.field private isRead:Z

.field private queue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final service:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TS;>;"
        }
    .end annotation
.end field

.field private final services:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ali/mobisecenhance/ServiceLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gez v0, :cond_0

    const-class v0, La/does/not/Exists2;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/ali/mobisecenhance/ServiceLoader;Lcom/ali/mobisecenhance/ServiceLoader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ali/mobisecenhance/ServiceLoader",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p0, "this":Lcom/ali/mobisecenhance/ServiceLoader$ServiceIterator;, "Lcom/ali/mobisecenhance/ServiceLoader<TS;>.ServiceIterator;"
    .local p2, "sl":Lcom/ali/mobisecenhance/ServiceLoader;, "Lcom/ali/mobisecenhance/ServiceLoader<TS;>;"
    iput-object p1, p0, Lcom/ali/mobisecenhance/ServiceLoader$ServiceIterator;->this$0:Lcom/ali/mobisecenhance/ServiceLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ali/mobisecenhance/ServiceLoader$ServiceIterator;->isRead:Z

    .line 195
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ali/mobisecenhance/ServiceLoader$ServiceIterator;->queue:Ljava/util/LinkedList;

    .line 198
    invoke-static {p2}, Lcom/ali/mobisecenhance/ServiceLoader;->access$000(Lcom/ali/mobisecenhance/ServiceLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/mobisecenhance/ServiceLoader$ServiceIterator;->classLoader:Ljava/lang/ClassLoader;

    .line 199
    invoke-static {p2}, Lcom/ali/mobisecenhance/ServiceLoader;->access$100(Lcom/ali/mobisecenhance/ServiceLoader;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/mobisecenhance/ServiceLoader$ServiceIterator;->service:Ljava/lang/Class;

    .line 200
    invoke-static {p2}, Lcom/ali/mobisecenhance/ServiceLoader;->access$200(Lcom/ali/mobisecenhance/ServiceLoader;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/mobisecenhance/ServiceLoader$ServiceIterator;->services:Ljava/util/Set;

    .line 201
    return-void
.end method

.method private checkValidJavaClassName(Ljava/lang/String;)V
    .locals 5
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 265
    .local p0, "this":Lcom/ali/mobisecenhance/ServiceLoader$ServiceIterator;, "Lcom/ali/mobisecenhance/ServiceLoader<TS;>.ServiceIterator;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 266
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 267
    .local v0, "ch":C
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x2e

    if-eq v0, v2, :cond_0

    .line 268
    new-instance v2, Ljava/util/ServiceConfigurationError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad character \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' in class name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 265
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 271
    .end local v0    # "ch":C
    :cond_1
    return-void
.end method

.method private readClass()V
    .locals 11

    .prologue
    .line 224
    .local p0, "this":Lcom/ali/mobisecenhance/ServiceLoader$ServiceIterator;, "Lcom/ali/mobisecenhance/ServiceLoader<TS;>.ServiceIterator;"
    iget-object v7, p0, Lcom/ali/mobisecenhance/ServiceLoader$ServiceIterator;->services:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/URL;

    .line 225
    .local v6, "url":Ljava/net/URL;
    const/4 v4, 0x0

    .line 227
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-direct {v8, v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 231
    const/16 v8, 0x23

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 232
    .local v1, "commentStart":I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_2

    .line 233
    const/4 v8, 0x0

    invoke-virtual {v3, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 235
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 237
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 240
    move-object v0, v3

    .line 241
    .local v0, "className":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/ali/mobisecenhance/ServiceLoader$ServiceIterator;->checkValidJavaClassName(Ljava/lang/String;)V

    .line 242
    iget-object v8, p0, Lcom/ali/mobisecenhance/ServiceLoader$ServiceIterator;->queue:Ljava/util/LinkedList;

    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 243
    iget-object v8, p0, Lcom/ali/mobisecenhance/ServiceLoader$ServiceIterator;->queue:Ljava/util/LinkedList;

    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 247
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "commentStart":I
    .end local v3    # "line":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 248
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :goto_2
    :try_start_2
    new-instance v7, Ljava/util/ServiceConfigurationError;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t read "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v2}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 250
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v4, :cond_3

    .line 252
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 254
    :cond_3
    :goto_4
    throw v7

    .line 246
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :cond_4
    const/4 v8, 0x1

    :try_start_4
    iput-boolean v8, p0, Lcom/ali/mobisecenhance/ServiceLoader$ServiceIterator;->isRead:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 250
    if-eqz v5, :cond_0

    .line 252
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 253
    :catch_1
    move-exception v8

    goto :goto_0

    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v8

    goto :goto_4

    .line 258
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "url":Ljava/net/URL;
    :cond_5
    return-void

    .line 250
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 247
    :catch_3
    move-exception v2

    goto :goto_2
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 204
    .local p0, "this":Lcom/ali/mobisecenhance/ServiceLoader$ServiceIterator;, "Lcom/ali/mobisecenhance/ServiceLoader<TS;>.ServiceIterator;"
    iget-boolean v0, p0, Lcom/ali/mobisecenhance/ServiceLoader$ServiceIterator;->isRead:Z

    if-nez v0, :cond_0

    .line 205
    invoke-direct {p0}, Lcom/ali/mobisecenhance/ServiceLoader$ServiceIterator;->readClass()V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/ali/mobisecenhance/ServiceLoader$ServiceIterator;->queue:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ali/mobisecenhance/ServiceLoader$ServiceIterator;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, "this":Lcom/ali/mobisecenhance/ServiceLoader$ServiceIterator;, "Lcom/ali/mobisecenhance/ServiceLoader<TS;>.ServiceIterator;"
    invoke-virtual {p0}, Lcom/ali/mobisecenhance/ServiceLoader$ServiceIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 213
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 215
    :cond_0
    iget-object v2, p0, Lcom/ali/mobisecenhance/ServiceLoader$ServiceIterator;->queue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 217
    .local v0, "className":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/ali/mobisecenhance/ServiceLoader$ServiceIterator;->service:Ljava/lang/Class;

    iget-object v3, p0, Lcom/ali/mobisecenhance/ServiceLoader$ServiceIterator;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v3, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 218
    :catch_0
    move-exception v1

    .line 219
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/util/ServiceConfigurationError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t instantiate class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 261
    .local p0, "this":Lcom/ali/mobisecenhance/ServiceLoader$ServiceIterator;, "Lcom/ali/mobisecenhance/ServiceLoader<TS;>.ServiceIterator;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
