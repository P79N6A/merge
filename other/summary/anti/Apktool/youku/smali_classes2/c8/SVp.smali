.class public Lc8/SVp;
.super Ljava/lang/Object;
.source "AsyncTimeout.java"

# interfaces
.implements Lc8/uWp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/UVp;->source(Lc8/uWp;)Lc8/uWp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/UVp;

.field final synthetic val$source:Lc8/uWp;


# direct methods
.method constructor <init>(Lc8/UVp;Lc8/uWp;)V
    .locals 0
    .param p1, "this$0"    # Lc8/UVp;

    .prologue
    .line 232
    iput-object p1, p0, Lc8/SVp;->this$0:Lc8/UVp;

    iput-object p2, p0, Lc8/SVp;->val$source:Lc8/uWp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    const/4 v1, 0x0

    .line 250
    .local v1, "throwOnTimeout":Z
    :try_start_0
    iget-object v2, p0, Lc8/SVp;->val$source:Lc8/uWp;

    invoke-interface {v2}, Lc8/uWp;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    const/4 v1, 0x1

    .line 255
    iget-object v2, p0, Lc8/SVp;->this$0:Lc8/UVp;

    invoke-virtual {v2, v1}, Lc8/UVp;->exit(Z)V

    .line 256
    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    iget-object v2, p0, Lc8/SVp;->this$0:Lc8/UVp;

    invoke-virtual {v2, v0}, Lc8/UVp;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lc8/SVp;->this$0:Lc8/UVp;

    invoke-virtual {v3, v1}, Lc8/UVp;->exit(Z)V

    throw v2
.end method

.method public read(Lc8/YVp;J)J
    .locals 6
    .param p1, "sink"    # Lc8/YVp;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    const/4 v1, 0x0

    .line 235
    .local v1, "throwOnTimeout":Z
    iget-object v4, p0, Lc8/SVp;->this$0:Lc8/UVp;

    invoke-virtual {v4}, Lc8/UVp;->enter()V

    .line 237
    :try_start_0
    iget-object v4, p0, Lc8/SVp;->val$source:Lc8/uWp;

    invoke-interface {v4, p1, p2, p3}, Lc8/uWp;->read(Lc8/YVp;J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 238
    .local v2, "result":J
    const/4 v1, 0x1

    .line 243
    iget-object v4, p0, Lc8/SVp;->this$0:Lc8/UVp;

    invoke-virtual {v4, v1}, Lc8/UVp;->exit(Z)V

    .line 239
    return-wide v2

    .line 240
    .end local v2    # "result":J
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    iget-object v4, p0, Lc8/SVp;->this$0:Lc8/UVp;

    invoke-virtual {v4, v0}, Lc8/UVp;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lc8/SVp;->this$0:Lc8/UVp;

    invoke-virtual {v5, v1}, Lc8/UVp;->exit(Z)V

    throw v4
.end method

.method public timeout()Lc8/wWp;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lc8/SVp;->this$0:Lc8/UVp;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AsyncTimeout.source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/SVp;->val$source:Lc8/uWp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method