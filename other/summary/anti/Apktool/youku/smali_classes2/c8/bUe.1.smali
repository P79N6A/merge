.class public final Lc8/bUe;
.super Ljava/lang/Object;
.source "Hpack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/cUe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Writer"
.end annotation


# instance fields
.field private final out:Lc8/YVp;


# direct methods
.method constructor <init>(Lc8/YVp;)V
    .locals 0
    .param p1, "out"    # Lc8/YVp;

    .prologue
    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput-object p1, p0, Lc8/bUe;->out:Lc8/YVp;

    .line 374
    return-void
.end method


# virtual methods
.method writeByteString(Lokio/ByteString;)V
    .locals 3
    .param p1, "data"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 417
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v0

    const/16 v1, 0x7f

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lc8/bUe;->writeInt(III)V

    .line 418
    iget-object v0, p0, Lc8/bUe;->out:Lc8/YVp;

    invoke-virtual {v0, p1}, Lc8/YVp;->write(Lokio/ByteString;)Lc8/YVp;

    .line 419
    return-void
.end method

.method writeHeaders(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/ZTe;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    const/4 v6, 0x0

    .line 380
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 381
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/ZTe;

    iget-object v4, v4, Lc8/ZTe;->name:Lokio/ByteString;

    invoke-virtual {v4}, Lokio/ByteString;->toAsciiLowercase()Lokio/ByteString;

    move-result-object v1

    .line 382
    .local v1, "name":Lokio/ByteString;
    invoke-static {}, Lc8/cUe;->access$200()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 383
    .local v3, "staticIndex":Ljava/lang/Integer;
    if-eqz v3, :cond_0

    .line 385
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0xf

    invoke-virtual {p0, v4, v5, v6}, Lc8/bUe;->writeInt(III)V

    .line 386
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/ZTe;

    iget-object v4, v4, Lc8/ZTe;->value:Lokio/ByteString;

    invoke-virtual {p0, v4}, Lc8/bUe;->writeByteString(Lokio/ByteString;)V

    .line 380
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 388
    :cond_0
    iget-object v4, p0, Lc8/bUe;->out:Lc8/YVp;

    invoke-virtual {v4, v6}, Lc8/YVp;->writeByte(I)Lc8/YVp;

    .line 389
    invoke-virtual {p0, v1}, Lc8/bUe;->writeByteString(Lokio/ByteString;)V

    .line 390
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/ZTe;

    iget-object v4, v4, Lc8/ZTe;->value:Lokio/ByteString;

    invoke-virtual {p0, v4}, Lc8/bUe;->writeByteString(Lokio/ByteString;)V

    goto :goto_1

    .line 393
    .end local v1    # "name":Lokio/ByteString;
    .end local v3    # "staticIndex":Ljava/lang/Integer;
    :cond_1
    return-void
.end method

.method writeInt(III)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "prefixMask"    # I
    .param p3, "bits"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 398
    if-ge p1, p2, :cond_0

    .line 399
    iget-object v1, p0, Lc8/bUe;->out:Lc8/YVp;

    or-int v2, p3, p1

    invoke-virtual {v1, v2}, Lc8/YVp;->writeByte(I)Lc8/YVp;

    .line 414
    :goto_0
    return-void

    .line 404
    :cond_0
    iget-object v1, p0, Lc8/bUe;->out:Lc8/YVp;

    or-int v2, p3, p2

    invoke-virtual {v1, v2}, Lc8/YVp;->writeByte(I)Lc8/YVp;

    .line 405
    sub-int/2addr p1, p2

    .line 408
    :goto_1
    const/16 v1, 0x80

    if-lt p1, v1, :cond_1

    .line 409
    and-int/lit8 v0, p1, 0x7f

    .line 410
    .local v0, "b":I
    iget-object v1, p0, Lc8/bUe;->out:Lc8/YVp;

    or-int/lit16 v2, v0, 0x80

    invoke-virtual {v1, v2}, Lc8/YVp;->writeByte(I)Lc8/YVp;

    .line 411
    ushr-int/lit8 p1, p1, 0x7

    .line 412
    goto :goto_1

    .line 413
    .end local v0    # "b":I
    :cond_1
    iget-object v1, p0, Lc8/bUe;->out:Lc8/YVp;

    invoke-virtual {v1, p1}, Lc8/YVp;->writeByte(I)Lc8/YVp;

    goto :goto_0
.end method
