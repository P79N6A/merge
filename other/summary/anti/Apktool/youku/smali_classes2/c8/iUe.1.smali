.class public final Lc8/iUe;
.super Ljava/lang/Object;
.source "Huffman.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/jUe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Node"
.end annotation


# instance fields
.field private final children:[Lc8/iUe;

.field private final symbol:I

.field private final terminalBits:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    const/16 v0, 0x100

    new-array v0, v0, [Lc8/iUe;

    iput-object v0, p0, Lc8/iUe;->children:[Lc8/iUe;

    .line 208
    iput v1, p0, Lc8/iUe;->symbol:I

    .line 209
    iput v1, p0, Lc8/iUe;->terminalBits:I

    .line 210
    return-void
.end method

.method constructor <init>(II)V
    .locals 2
    .param p1, "symbol"    # I
    .param p2, "bits"    # I

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    const/4 v1, 0x0

    iput-object v1, p0, Lc8/iUe;->children:[Lc8/iUe;

    .line 220
    iput p1, p0, Lc8/iUe;->symbol:I

    .line 221
    and-int/lit8 v0, p2, 0x7

    .line 222
    .local v0, "b":I
    if-nez v0, :cond_0

    const/16 v0, 0x8

    .end local v0    # "b":I
    :cond_0
    iput v0, p0, Lc8/iUe;->terminalBits:I

    .line 223
    return-void
.end method

.method static synthetic access$000(Lc8/iUe;)[Lc8/iUe;
    .locals 1
    .param p0, "x0"    # Lc8/iUe;

    .prologue
    .line 194
    iget-object v0, p0, Lc8/iUe;->children:[Lc8/iUe;

    return-object v0
.end method

.method static synthetic access$100(Lc8/iUe;)I
    .locals 1
    .param p0, "x0"    # Lc8/iUe;

    .prologue
    .line 194
    iget v0, p0, Lc8/iUe;->symbol:I

    return v0
.end method

.method static synthetic access$200(Lc8/iUe;)I
    .locals 1
    .param p0, "x0"    # Lc8/iUe;

    .prologue
    .line 194
    iget v0, p0, Lc8/iUe;->terminalBits:I

    return v0
.end method
