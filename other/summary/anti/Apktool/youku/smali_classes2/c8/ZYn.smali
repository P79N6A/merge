.class public final Lc8/ZYn;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/aZn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Snapshot"
.end annotation


# instance fields
.field private final ins:[Ljava/io/InputStream;

.field private final key:Ljava/lang/String;

.field private final sequenceNumber:J

.field final synthetic this$0:Lc8/aZn;


# direct methods
.method private constructor <init>(Lc8/aZn;Ljava/lang/String;J[Ljava/io/InputStream;)V
    .locals 1
    .param p1, "this$0"    # Lc8/aZn;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "sequenceNumber"    # J
    .param p5, "ins"    # [Ljava/io/InputStream;

    .prologue
    .line 735
    iput-object p1, p0, Lc8/ZYn;->this$0:Lc8/aZn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 736
    iput-object p2, p0, Lc8/ZYn;->key:Ljava/lang/String;

    .line 737
    iput-wide p3, p0, Lc8/ZYn;->sequenceNumber:J

    .line 738
    iput-object p5, p0, Lc8/ZYn;->ins:[Ljava/io/InputStream;

    .line 739
    return-void
.end method

.method synthetic constructor <init>(Lc8/aZn;Ljava/lang/String;J[Ljava/io/InputStream;Lc8/VYn;)V
    .locals 1
    .param p1, "x0"    # Lc8/aZn;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # J
    .param p5, "x3"    # [Ljava/io/InputStream;
    .param p6, "x4"    # Lc8/VYn;

    .prologue
    .line 730
    invoke-direct/range {p0 .. p5}, Lc8/ZYn;-><init>(Lc8/aZn;Ljava/lang/String;J[Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 765
    iget-object v2, p0, Lc8/ZYn;->ins:[Ljava/io/InputStream;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 766
    .local v0, "in":Ljava/io/InputStream;
    invoke-static {v0}, Lc8/aZn;->closeQuietly(Ljava/io/Closeable;)V

    .line 765
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 768
    .end local v0    # "in":Ljava/io/InputStream;
    :cond_0
    return-void
.end method

.method public edit()Lc8/XYn;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 747
    iget-object v0, p0, Lc8/ZYn;->this$0:Lc8/aZn;

    iget-object v1, p0, Lc8/ZYn;->key:Ljava/lang/String;

    iget-wide v2, p0, Lc8/ZYn;->sequenceNumber:J

    invoke-static {v0, v1, v2, v3}, Lc8/aZn;->access$1500(Lc8/aZn;Ljava/lang/String;J)Lc8/XYn;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream(I)Ljava/io/InputStream;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 754
    iget-object v0, p0, Lc8/ZYn;->ins:[Ljava/io/InputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 761
    invoke-virtual {p0, p1}, Lc8/ZYn;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lc8/aZn;->access$1600(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
