.class public Lc8/CBb;
.super Ljava/lang/Object;
.source "Base64_2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/BBb;,
        Lc8/ABb;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DECODE:I = 0x0

.field public static final DONT_GUNZIP:I = 0x4

.field public static final DO_BREAK_LINES:I = 0x8

.field public static final ENCODE:I = 0x1

.field private static final EQUALS_SIGN:B = 0x3dt

.field private static final EQUALS_SIGN_ENC:B = -0x1t

.field public static final GZIP:I = 0x2

.field private static final MAX_LINE_LENGTH:I = 0x4c

.field private static final NEW_LINE:B = 0xat

.field public static final NO_OPTIONS:I = 0x0

.field public static final ORDERED:I = 0x20

.field private static final PREFERRED_ENCODING:Ljava/lang/String; = "US-ASCII"

.field public static final URL_SAFE:I = 0x10

.field private static final WHITE_SPACE_ENC:B = -0x5t

.field private static final _ORDERED_ALPHABET:[B

.field private static final _ORDERED_DECODABET:[B

.field private static final _STANDARD_ALPHABET:[B

.field private static final _STANDARD_DECODABET:[B

.field private static final _URL_SAFE_ALPHABET:[B

.field private static final _URL_SAFE_DECODABET:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x100

    const/16 v1, 0x40

    .line 171
    const-class v0, Lc8/CBb;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lc8/CBb;->$assertionsDisabled:Z

    .line 259
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lc8/CBb;->_STANDARD_ALPHABET:[B

    .line 278
    new-array v0, v2, [B

    fill-array-data v0, :array_1

    sput-object v0, Lc8/CBb;->_STANDARD_DECODABET:[B

    .line 335
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lc8/CBb;->_URL_SAFE_ALPHABET:[B

    .line 353
    new-array v0, v2, [B

    fill-array-data v0, :array_3

    sput-object v0, Lc8/CBb;->_URL_SAFE_DECODABET:[B

    .line 413
    new-array v0, v1, [B

    fill-array-data v0, :array_4

    sput-object v0, Lc8/CBb;->_ORDERED_ALPHABET:[B

    .line 431
    const/16 v0, 0x101

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    sput-object v0, Lc8/CBb;->_ORDERED_DECODABET:[B

    return-void

    .line 171
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 259
    .line 278
    .line 335
    .line 353
    .line 413
    .line 431
    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_1
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3et
        -0x9t
        -0x9t
        -0x9t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data

    :array_2
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data

    :array_3
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3et
        -0x9t
        -0x9t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3ft
        -0x9t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data

    :array_4
    .array-data 1
        0x2dt
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x5ft
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
    .end array-data

    :array_5
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        -0x9t
        -0x9t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x25t
        -0x9t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0x3et
        0x3ft
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    return-void
.end method

.method static synthetic access$000(I)[B
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 171
    invoke-static {p0}, Lc8/CBb;->getDecodabet(I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100([BII[BII)[B
    .locals 1
    .param p0, "x0"    # [B
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # [B
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 171
    invoke-static/range {p0 .. p5}, Lc8/CBb;->encode3to4([BII[BII)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200([BI[BII)I
    .locals 1
    .param p0, "x0"    # [B
    .param p1, "x1"    # I
    .param p2, "x2"    # [B
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 171
    invoke-static {p0, p1, p2, p3, p4}, Lc8/CBb;->decode4to3([BI[BII)I

    move-result v0

    return v0
.end method

.method static synthetic access$300([B[BII)[B
    .locals 1
    .param p0, "x0"    # [B
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 171
    invoke-static {p0, p1, p2, p3}, Lc8/CBb;->encode3to4([B[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1319
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lc8/CBb;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;I)[B
    .locals 16
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1336
    if-nez p0, :cond_0

    .line 1337
    new-instance v13, Ljava/lang/NullPointerException;

    const-string/jumbo v14, "Input string was null."

    invoke-direct {v13, v14}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1342
    :cond_0
    :try_start_0
    const-string/jumbo v13, "US-ASCII"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 1350
    .local v6, "bytes":[B
    :goto_0
    const/4 v13, 0x0

    array-length v14, v6

    move/from16 v0, p1

    invoke-static {v6, v13, v14, v0}, Lc8/CBb;->decode([BIII)[B

    move-result-object v6

    .line 1354
    and-int/lit8 v13, p1, 0x4

    if-eqz v13, :cond_2

    const/4 v7, 0x1

    .line 1355
    .local v7, "dontGunzip":Z
    :goto_1
    if-eqz v6, :cond_1

    array-length v13, v6

    const/4 v14, 0x4

    if-lt v13, v14, :cond_1

    if-nez v7, :cond_1

    .line 1357
    const/4 v13, 0x0

    aget-byte v13, v6, v13

    and-int/lit16 v13, v13, 0xff

    const/4 v14, 0x1

    aget-byte v14, v6, v14

    shl-int/lit8 v14, v14, 0x8

    const v15, 0xff00

    and-int/2addr v14, v15

    or-int v11, v13, v14

    .line 1358
    .local v11, "head":I
    const v13, 0x8b1f

    if-ne v13, v11, :cond_1

    .line 1359
    const/4 v1, 0x0

    .line 1360
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    const/4 v9, 0x0

    .line 1361
    .local v9, "gzis":Ljava/util/zip/GZIPInputStream;
    const/4 v3, 0x0

    .line 1362
    .local v3, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v13, 0x800

    new-array v5, v13, [B

    .line 1366
    .local v5, "buffer":[B
    :try_start_1
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1367
    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v4, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_2
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1368
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .local v2, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_3
    new-instance v10, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v10, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1370
    .end local v9    # "gzis":Ljava/util/zip/GZIPInputStream;
    .local v10, "gzis":Ljava/util/zip/GZIPInputStream;
    :goto_2
    :try_start_4
    invoke-virtual {v10, v5}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v12

    .local v12, "length":I
    if-ltz v12, :cond_3

    .line 1371
    const/4 v13, 0x0

    invoke-virtual {v4, v5, v13, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    .line 1378
    .end local v12    # "length":I
    :catch_0
    move-exception v8

    move-object v3, v4

    .end local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    move-object v9, v10

    .end local v10    # "gzis":Ljava/util/zip/GZIPInputStream;
    .restart local v9    # "gzis":Ljava/util/zip/GZIPInputStream;
    move-object v1, v2

    .line 1379
    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .local v8, "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1384
    :try_start_6
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 1388
    :goto_4
    :try_start_7
    invoke-virtual {v9}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 1392
    :goto_5
    :try_start_8
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 1400
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "buffer":[B
    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "gzis":Ljava/util/zip/GZIPInputStream;
    .end local v11    # "head":I
    :cond_1
    :goto_6
    return-object v6

    .line 1345
    .end local v6    # "bytes":[B
    .end local v7    # "dontGunzip":Z
    :catch_1
    move-exception v13

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .restart local v6    # "bytes":[B
    goto :goto_0

    .line 1354
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 1375
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "buffer":[B
    .restart local v7    # "dontGunzip":Z
    .restart local v10    # "gzis":Ljava/util/zip/GZIPInputStream;
    .restart local v11    # "head":I
    .restart local v12    # "length":I
    :cond_3
    :try_start_9
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-result-object v6

    .line 1384
    :try_start_a
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 1388
    :goto_7
    :try_start_b
    invoke-virtual {v10}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 1392
    :goto_8
    :try_start_c
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_6

    .line 1395
    :catch_2
    move-exception v13

    goto :goto_6

    .line 1383
    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v10    # "gzis":Ljava/util/zip/GZIPInputStream;
    .end local v12    # "length":I
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "gzis":Ljava/util/zip/GZIPInputStream;
    :catchall_0
    move-exception v13

    .line 1384
    :goto_9
    :try_start_d
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    .line 1388
    :goto_a
    :try_start_e
    invoke-virtual {v9}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9

    .line 1392
    :goto_b
    :try_start_f
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a

    .line 1394
    :goto_c
    throw v13

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "gzis":Ljava/util/zip/GZIPInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "gzis":Ljava/util/zip/GZIPInputStream;
    .restart local v12    # "length":I
    :catch_3
    move-exception v13

    goto :goto_7

    :catch_4
    move-exception v13

    goto :goto_8

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v10    # "gzis":Ljava/util/zip/GZIPInputStream;
    .end local v12    # "length":I
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "e":Ljava/io/IOException;
    .restart local v9    # "gzis":Ljava/util/zip/GZIPInputStream;
    :catch_5
    move-exception v13

    goto :goto_4

    :catch_6
    move-exception v13

    goto :goto_5

    .line 1395
    :catch_7
    move-exception v13

    goto :goto_6

    .end local v8    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v14

    goto :goto_a

    :catch_9
    move-exception v14

    goto :goto_b

    :catch_a
    move-exception v14

    goto :goto_c

    .line 1383
    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v13

    move-object v3, v4

    .end local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_9

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v13

    move-object v3, v4

    .end local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_9

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "gzis":Ljava/util/zip/GZIPInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "gzis":Ljava/util/zip/GZIPInputStream;
    :catchall_3
    move-exception v13

    move-object v3, v4

    .end local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    move-object v9, v10

    .end local v10    # "gzis":Ljava/util/zip/GZIPInputStream;
    .restart local v9    # "gzis":Ljava/util/zip/GZIPInputStream;
    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_9

    .line 1378
    :catch_b
    move-exception v8

    goto :goto_3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_c
    move-exception v8

    move-object v3, v4

    .end local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_d
    move-exception v8

    move-object v3, v4

    .end local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_3
.end method

.method public static decode([B)[B
    .locals 3
    .param p0, "source"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1207
    array-length v1, p0

    invoke-static {p0, v2, v1, v2}, Lc8/CBb;->decode([BIII)[B

    move-result-object v0

    .line 1213
    .local v0, "decoded":[B
    return-object v0
.end method

.method public static decode([BIII)[B
    .locals 16
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1243
    if-nez p0, :cond_0

    .line 1244
    new-instance v11, Ljava/lang/NullPointerException;

    const-string/jumbo v12, "Cannot decode null source array."

    invoke-direct {v11, v12}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1246
    :cond_0
    if-ltz p1, :cond_1

    add-int v11, p1, p2

    move-object/from16 v0, p0

    array-length v12, v0

    if-le v11, v12, :cond_2

    .line 1247
    :cond_1
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v12, "Source array with length %d cannot have offset of %d and process %d bytes."

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    array-length v15, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1253
    :cond_2
    if-nez p2, :cond_3

    .line 1254
    const/4 v11, 0x0

    new-array v7, v11, [B

    .line 1306
    :goto_0
    return-object v7

    .line 1255
    :cond_3
    const/4 v11, 0x4

    move/from16 v0, p2

    if-ge v0, v11, :cond_4

    .line 1256
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Base64-encoded string must have at least four characters, but length specified was "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1261
    :cond_4
    invoke-static/range {p3 .. p3}, Lc8/CBb;->getDecodabet(I)[B

    move-result-object v1

    .line 1263
    .local v1, "DECODABET":[B
    mul-int/lit8 v11, p2, 0x3

    div-int/lit8 v6, v11, 0x4

    .line 1264
    .local v6, "len34":I
    new-array v8, v6, [B

    .line 1265
    .local v8, "outBuff":[B
    const/4 v9, 0x0

    .line 1267
    .local v9, "outBuffPosn":I
    const/4 v11, 0x4

    new-array v2, v11, [B

    .line 1269
    .local v2, "b4":[B
    const/4 v3, 0x0

    .line 1273
    .local v3, "b4Posn":I
    move/from16 v5, p1

    .local v5, "i":I
    move v4, v3

    .end local v3    # "b4Posn":I
    .local v4, "b4Posn":I
    :goto_1
    add-int v11, p1, p2

    if-ge v5, v11, :cond_8

    .line 1275
    aget-byte v11, p0, v5

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v1, v11

    .line 1280
    .local v10, "sbiDecode":B
    const/4 v11, -0x5

    if-lt v10, v11, :cond_5

    .line 1281
    const/4 v11, -0x1

    if-lt v10, v11, :cond_6

    .line 1282
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "b4Posn":I
    .restart local v3    # "b4Posn":I
    aget-byte v11, p0, v5

    aput-byte v11, v2, v4

    .line 1283
    const/4 v11, 0x3

    if-le v3, v11, :cond_7

    .line 1284
    const/4 v11, 0x0

    move/from16 v0, p3

    invoke-static {v2, v11, v8, v9, v0}, Lc8/CBb;->decode4to3([BI[BII)I

    move-result v11

    add-int/2addr v9, v11

    .line 1286
    const/4 v3, 0x0

    .line 1289
    aget-byte v11, p0, v5

    const/16 v12, 0x3d

    if-ne v11, v12, :cond_7

    .line 1304
    .end local v10    # "sbiDecode":B
    :goto_2
    new-array v7, v9, [B

    .line 1305
    .local v7, "out":[B
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v8, v11, v7, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 1297
    .end local v3    # "b4Posn":I
    .end local v7    # "out":[B
    .restart local v4    # "b4Posn":I
    .restart local v10    # "sbiDecode":B
    :cond_5
    new-instance v11, Ljava/io/IOException;

    const-string/jumbo v12, "Bad Base64 input character decimal %d in array position %d"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aget-byte v15, p0, v5

    and-int/lit16 v15, v15, 0xff

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_6
    move v3, v4

    .line 1273
    .end local v4    # "b4Posn":I
    .restart local v3    # "b4Posn":I
    :cond_7
    add-int/lit8 v5, v5, 0x1

    move v4, v3

    .end local v3    # "b4Posn":I
    .restart local v4    # "b4Posn":I
    goto :goto_1

    .end local v10    # "sbiDecode":B
    :cond_8
    move v3, v4

    .end local v4    # "b4Posn":I
    .restart local v3    # "b4Posn":I
    goto :goto_2
.end method

.method private static decode4to3([BI[BII)I
    .locals 8
    .param p0, "source"    # [B
    .param p1, "srcOffset"    # I
    .param p2, "destination"    # [B
    .param p3, "destOffset"    # I
    .param p4, "options"    # I

    .prologue
    const/16 v6, 0x3d

    const/4 v7, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1121
    if-nez p0, :cond_0

    .line 1122
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "Source array was null."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1124
    :cond_0
    if-nez p2, :cond_1

    .line 1125
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "Destination array was null."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1127
    :cond_1
    if-ltz p1, :cond_2

    add-int/lit8 v4, p1, 0x3

    array-length v5, p0

    if-lt v4, v5, :cond_3

    .line 1128
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Source array with length %d cannot have offset of %d and still process four bytes."

    new-array v3, v3, [Ljava/lang/Object;

    array-length v6, p0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v2

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1133
    :cond_3
    if-ltz p3, :cond_4

    add-int/lit8 v4, p3, 0x2

    array-length v5, p2

    if-lt v4, v5, :cond_5

    .line 1134
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Destination array with length %d cannot have offset of %d and still store three bytes."

    new-array v3, v3, [Ljava/lang/Object;

    array-length v6, p2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v2

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1140
    :cond_5
    invoke-static {p4}, Lc8/CBb;->getDecodabet(I)[B

    move-result-object v0

    .line 1143
    .local v0, "DECODABET":[B
    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    if-ne v4, v6, :cond_6

    .line 1148
    aget-byte v3, p0, p1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x12

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0xc

    or-int v1, v3, v4

    .line 1151
    .local v1, "outBuff":I
    ushr-int/lit8 v3, v1, 0x10

    int-to-byte v3, v3

    aput-byte v3, p2, p3

    .line 1188
    :goto_0
    return v2

    .line 1156
    .end local v1    # "outBuff":I
    :cond_6
    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    if-ne v2, v6, :cond_7

    .line 1162
    aget-byte v2, p0, p1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x12

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0xc

    or-int/2addr v2, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x6

    or-int v1, v2, v4

    .line 1166
    .restart local v1    # "outBuff":I
    ushr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    .line 1167
    add-int/lit8 v2, p3, 0x1

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v2

    move v2, v3

    .line 1168
    goto :goto_0

    .line 1179
    .end local v1    # "outBuff":I
    :cond_7
    aget-byte v2, p0, p1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x12

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v2, v3

    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    .line 1184
    .restart local v1    # "outBuff":I
    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    .line 1185
    add-int/lit8 v2, p3, 0x1

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 1186
    add-int/lit8 v2, p3, 0x2

    int-to-byte v3, v1

    aput-byte v3, p2, v2

    .line 1188
    const/4 v2, 0x3

    goto :goto_0
.end method

.method public static decodeFileToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "infile"    # Ljava/lang/String;
    .param p1, "outfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1730
    invoke-static {p0}, Lc8/CBb;->decodeFromFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 1731
    .local v0, "decoded":[B
    const/4 v2, 0x0

    .line 1733
    .local v2, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1735
    .end local v2    # "out":Ljava/io/OutputStream;
    .local v3, "out":Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1742
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1745
    :goto_0
    return-void

    .line 1737
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 1738
    .local v1, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1741
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 1742
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1744
    :goto_3
    throw v4

    .line 1745
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v4

    goto :goto_0

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_2
    move-exception v5

    goto :goto_3

    .line 1741
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_2

    .line 1737
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catch_3
    move-exception v1

    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_1
.end method

.method public static decodeFromFile(Ljava/lang/String;)[B
    .locals 12
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1591
    const/4 v0, 0x0

    .line 1594
    .local v0, "bis":Lc8/ABb;
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1596
    .local v5, "file":Ljava/io/File;
    const/4 v6, 0x0

    .line 1600
    .local v6, "length":I
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/32 v10, 0x7fffffff

    cmp-long v8, v8, v10

    if-lez v8, :cond_0

    .line 1601
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "File is too big for this convenience method ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " bytes)."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1621
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "length":I
    :catch_0
    move-exception v4

    .line 1622
    .local v4, "e":Ljava/io/IOException;
    :goto_0
    :try_start_1
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1625
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 1626
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Lc8/ABb;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1628
    :goto_2
    throw v8

    .line 1605
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "length":I
    :cond_0
    :try_start_3
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v2, v8, [B

    .line 1608
    .local v2, "buffer":[B
    new-instance v1, Lc8/ABb;

    new-instance v8, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v9, 0x0

    invoke-direct {v1, v8, v9}, Lc8/ABb;-><init>(Ljava/io/InputStream;I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1612
    .end local v0    # "bis":Lc8/ABb;
    .local v1, "bis":Lc8/ABb;
    :goto_3
    const/16 v8, 0x1000

    :try_start_4
    invoke-virtual {v1, v2, v6, v8}, Lc8/ABb;->read([BII)I

    move-result v7

    .local v7, "numBytes":I
    if-ltz v7, :cond_1

    .line 1613
    add-int/2addr v6, v7

    goto :goto_3

    .line 1617
    :cond_1
    new-array v3, v6, [B

    .line 1618
    .local v3, "decodedData":[B
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v8, v3, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1626
    :try_start_5
    invoke-virtual {v1}, Lc8/ABb;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 1631
    :goto_4
    return-object v3

    .line 1629
    :catch_1
    move-exception v8

    goto :goto_4

    .end local v1    # "bis":Lc8/ABb;
    .end local v2    # "buffer":[B
    .end local v3    # "decodedData":[B
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "length":I
    .end local v7    # "numBytes":I
    .restart local v0    # "bis":Lc8/ABb;
    :catch_2
    move-exception v9

    goto :goto_2

    .line 1625
    .end local v0    # "bis":Lc8/ABb;
    .restart local v1    # "bis":Lc8/ABb;
    .restart local v2    # "buffer":[B
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "length":I
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "bis":Lc8/ABb;
    .restart local v0    # "bis":Lc8/ABb;
    goto :goto_1

    .line 1621
    .end local v0    # "bis":Lc8/ABb;
    .restart local v1    # "bis":Lc8/ABb;
    :catch_3
    move-exception v4

    move-object v0, v1

    .end local v1    # "bis":Lc8/ABb;
    .restart local v0    # "bis":Lc8/ABb;
    goto :goto_0
.end method

.method public static decodeToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "dataToDecode"    # Ljava/lang/String;
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1554
    const/4 v0, 0x0

    .line 1556
    .local v0, "bos":Lc8/BBb;
    :try_start_0
    new-instance v1, Lc8/BBb;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lc8/BBb;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1558
    .end local v0    # "bos":Lc8/BBb;
    .local v1, "bos":Lc8/BBb;
    :try_start_1
    const-string/jumbo v3, "US-ASCII"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lc8/BBb;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1565
    :try_start_2
    invoke-virtual {v1}, Lc8/BBb;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1568
    :goto_0
    return-void

    .line 1560
    .end local v1    # "bos":Lc8/BBb;
    .restart local v0    # "bos":Lc8/BBb;
    :catch_0
    move-exception v2

    .line 1561
    .local v2, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1564
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 1565
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Lc8/BBb;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1567
    :goto_3
    throw v3

    .line 1568
    .end local v0    # "bos":Lc8/BBb;
    .restart local v1    # "bos":Lc8/BBb;
    :catch_1
    move-exception v3

    goto :goto_0

    .end local v1    # "bos":Lc8/BBb;
    .restart local v0    # "bos":Lc8/BBb;
    :catch_2
    move-exception v4

    goto :goto_3

    .line 1564
    .end local v0    # "bos":Lc8/BBb;
    .restart local v1    # "bos":Lc8/BBb;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "bos":Lc8/BBb;
    .restart local v0    # "bos":Lc8/BBb;
    goto :goto_2

    .line 1560
    .end local v0    # "bos":Lc8/BBb;
    .restart local v1    # "bos":Lc8/BBb;
    :catch_3
    move-exception v2

    move-object v0, v1

    .end local v1    # "bos":Lc8/BBb;
    .restart local v0    # "bos":Lc8/BBb;
    goto :goto_1
.end method

.method public static decodeToObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "encodedObject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1417
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lc8/CBb;->decodeToObject(Ljava/lang/String;ILjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static decodeToObject(Ljava/lang/String;ILjava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 9
    .param p0, "encodedObject"    # Ljava/lang/String;
    .param p1, "options"    # I
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1440
    invoke-static {p0, p1}, Lc8/CBb;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 1442
    .local v4, "objBytes":[B
    const/4 v0, 0x0

    .line 1443
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    const/4 v5, 0x0

    .line 1447
    .local v5, "ois":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1450
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    if-nez p2, :cond_0

    .line 1451
    :try_start_1
    new-instance v6, Ljava/io/ObjectInputStream;

    invoke-direct {v6, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .local v6, "ois":Ljava/io/ObjectInputStream;
    move-object v5, v6

    .line 1473
    .end local v6    # "ois":Ljava/io/ObjectInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    :goto_0
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 1483
    .local v3, "obj":Ljava/lang/Object;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1487
    :goto_1
    :try_start_3
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1492
    :goto_2
    return-object v3

    .line 1457
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_0
    :try_start_4
    new-instance v6, Lc8/zBb;

    invoke-direct {v6, v1, p2}, Lc8/zBb;-><init>(Ljava/io/InputStream;Ljava/lang/ClassLoader;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v6    # "ois":Ljava/io/ObjectInputStream;
    move-object v5, v6

    .end local v6    # "ois":Ljava/io/ObjectInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_0

    .line 1475
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_0
    move-exception v2

    .line 1476
    .local v2, "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1482
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 1483
    :goto_4
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 1487
    :goto_5
    :try_start_7
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 1489
    :goto_6
    throw v7

    .line 1478
    :catch_1
    move-exception v2

    .line 1479
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    :goto_7
    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "obj":Ljava/lang/Object;
    :catch_2
    move-exception v7

    goto :goto_1

    .line 1490
    :catch_3
    move-exception v7

    goto :goto_2

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "obj":Ljava/lang/Object;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_4
    move-exception v8

    goto :goto_5

    :catch_5
    move-exception v8

    goto :goto_6

    .line 1482
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_4

    .line 1478
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_7

    .line 1475
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_3
.end method

.method public static encode(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p0, "raw"    # Ljava/nio/ByteBuffer;
    .param p1, "encoded"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 630
    new-array v1, v5, [B

    .line 631
    .local v1, "raw3":[B
    const/4 v3, 0x4

    new-array v0, v3, [B

    .line 633
    .local v0, "enc4":[B
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 634
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 635
    .local v2, "rem":I
    invoke-virtual {p0, v1, v4, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 636
    invoke-static {v0, v1, v2, v4}, Lc8/CBb;->encode3to4([B[BII)[B

    .line 637
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 639
    .end local v2    # "rem":I
    :cond_0
    return-void
.end method

.method public static encode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V
    .locals 8
    .param p0, "raw"    # Ljava/nio/ByteBuffer;
    .param p1, "encoded"    # Ljava/nio/CharBuffer;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 653
    new-array v2, v6, [B

    .line 654
    .local v2, "raw3":[B
    new-array v0, v7, [B

    .line 656
    .local v0, "enc4":[B
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 657
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 658
    .local v3, "rem":I
    invoke-virtual {p0, v2, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 659
    invoke-static {v0, v2, v3, v5}, Lc8/CBb;->encode3to4([B[BII)[B

    .line 660
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_0

    .line 661
    aget-byte v4, v0, v1

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    invoke-virtual {p1, v4}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 660
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 664
    .end local v1    # "i":I
    .end local v3    # "rem":I
    :cond_1
    return-void
.end method

.method private static encode3to4([BII[BII)[B
    .locals 6
    .param p0, "source"    # [B
    .param p1, "srcOffset"    # I
    .param p2, "numSigBytes"    # I
    .param p3, "destination"    # [B
    .param p4, "destOffset"    # I
    .param p5, "options"    # I

    .prologue
    const/16 v5, 0x3d

    const/4 v2, 0x0

    .line 573
    invoke-static {p5}, Lc8/CBb;->getAlphabet(I)[B

    move-result-object v0

    .line 587
    .local v0, "ALPHABET":[B
    if-lez p2, :cond_1

    aget-byte v3, p0, p1

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x8

    move v4, v3

    :goto_0
    const/4 v3, 0x1

    if-le p2, v3, :cond_2

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x10

    :goto_1
    or-int/2addr v3, v4

    const/4 v4, 0x2

    if-le p2, v4, :cond_0

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x18

    :cond_0
    or-int v1, v3, v2

    .line 591
    .local v1, "inBuff":I
    packed-switch p2, :pswitch_data_0

    .line 614
    :goto_2
    return-object p3

    .end local v1    # "inBuff":I
    :cond_1
    move v4, v2

    .line 587
    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    .line 593
    .restart local v1    # "inBuff":I
    :pswitch_0
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p3, p4

    .line 594
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 595
    add-int/lit8 v2, p4, 0x2

    ushr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 596
    add-int/lit8 v2, p4, 0x3

    and-int/lit8 v3, v1, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    goto :goto_2

    .line 600
    :pswitch_1
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p3, p4

    .line 601
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 602
    add-int/lit8 v2, p4, 0x2

    ushr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 603
    add-int/lit8 v2, p4, 0x3

    aput-byte v5, p3, v2

    goto :goto_2

    .line 607
    :pswitch_2
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p3, p4

    .line 608
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 609
    add-int/lit8 v2, p4, 0x2

    aput-byte v5, p3, v2

    .line 610
    add-int/lit8 v2, p4, 0x3

    aput-byte v5, p3, v2

    goto :goto_2

    .line 591
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static encode3to4([B[BII)[B
    .locals 6
    .param p0, "b4"    # [B
    .param p1, "threeBytes"    # [B
    .param p2, "numSigBytes"    # I
    .param p3, "options"    # I

    .prologue
    const/4 v1, 0x0

    .line 541
    move-object v0, p1

    move v2, p2

    move-object v3, p0

    move v4, v1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lc8/CBb;->encode3to4([BII[BII)[B

    .line 542
    return-object p0
.end method

.method public static encodeBase64String([B)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # [B

    .prologue
    .line 1217
    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    .line 1218
    invoke-static {p0}, Lc8/CBb;->encodeBytes([B)Ljava/lang/String;

    move-result-object v0

    .line 1220
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static encodeBytes([B)Ljava/lang/String;
    .locals 5
    .param p0, "source"    # [B

    .prologue
    .line 797
    const/4 v0, 0x0

    .line 799
    .local v0, "encoded":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    array-length v3, p0

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4}, Lc8/CBb;->encodeBytes([BIII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 803
    :cond_0
    sget-boolean v2, Lc8/CBb;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 800
    :catch_0
    move-exception v1

    .line 801
    .local v1, "ex":Ljava/io/IOException;
    sget-boolean v2, Lc8/CBb;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 804
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_1
    return-object v0
.end method

.method public static encodeBytes([BI)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # [B
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 842
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lc8/CBb;->encodeBytes([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBytes([BII)Ljava/lang/String;
    .locals 4
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    .prologue
    .line 867
    const/4 v0, 0x0

    .line 869
    .local v0, "encoded":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, v2}, Lc8/CBb;->encodeBytes([BIII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 873
    :cond_0
    sget-boolean v2, Lc8/CBb;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 870
    :catch_0
    move-exception v1

    .line 871
    .local v1, "ex":Ljava/io/IOException;
    sget-boolean v2, Lc8/CBb;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 874
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_1
    return-object v0
.end method

.method public static encodeBytes([BIII)Ljava/lang/String;
    .locals 3
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 915
    invoke-static {p0, p1, p2, p3}, Lc8/CBb;->encodeBytesToBytes([BIII)[B

    move-result-object v0

    .line 919
    .local v0, "encoded":[B
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "US-ASCII"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 922
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static encodeBytesToBytes([B)[B
    .locals 5
    .param p0, "source"    # [B

    .prologue
    .line 938
    const/4 v0, 0x0

    .line 940
    .local v0, "encoded":[B
    const/4 v2, 0x0

    :try_start_0
    array-length v3, p0

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4}, Lc8/CBb;->encodeBytesToBytes([BIII)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 946
    :cond_0
    return-object v0

    .line 942
    :catch_0
    move-exception v1

    .line 943
    .local v1, "ex":Ljava/io/IOException;
    sget-boolean v2, Lc8/CBb;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IOExceptions only come from GZipping, which is turned off: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public static encodeBytesToBytes([BIII)[B
    .locals 23
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 969
    if-nez p0, :cond_0

    .line 970
    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "Cannot serialize a null array."

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 973
    :cond_0
    if-gez p1, :cond_1

    .line 974
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cannot have negative offset: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 978
    :cond_1
    if-gez p2, :cond_2

    .line 979
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cannot have length offset: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 983
    :cond_2
    add-int v4, p1, p2

    move-object/from16 v0, p0

    array-length v5, v0

    if-le v4, v5, :cond_3

    .line 984
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Cannot have offset of %d and length of %d with array of length %d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v6, v9

    const/4 v9, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v6, v9

    const/4 v9, 0x2

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 991
    :cond_3
    and-int/lit8 v4, p3, 0x2

    if-eqz v4, :cond_4

    .line 992
    const/4 v12, 0x0

    .line 993
    .local v12, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v18, 0x0

    .line 994
    .local v18, "gzos":Ljava/util/zip/GZIPOutputStream;
    const/4 v10, 0x0

    .line 998
    .local v10, "b64os":Lc8/BBb;
    :try_start_0
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 999
    .end local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v13, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v11, Lc8/BBb;

    or-int/lit8 v4, p3, 0x1

    invoke-direct {v11, v13, v4}, Lc8/BBb;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1000
    .end local v10    # "b64os":Lc8/BBb;
    .local v11, "b64os":Lc8/BBb;
    :try_start_2
    new-instance v19, Ljava/util/zip/GZIPOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v11}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1002
    .end local v18    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .local v19, "gzos":Ljava/util/zip/GZIPOutputStream;
    :try_start_3
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 1003
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1012
    :try_start_4
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1016
    :goto_0
    :try_start_5
    invoke-virtual {v11}, Lc8/BBb;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 1020
    :goto_1
    :try_start_6
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 1025
    :goto_2
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v17

    .line 1081
    .end local v11    # "b64os":Lc8/BBb;
    .end local v13    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v19    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :goto_3
    return-object v17

    .line 1005
    .restart local v10    # "b64os":Lc8/BBb;
    .restart local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v18    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :catch_0
    move-exception v8

    .line 1008
    .local v8, "e":Ljava/io/IOException;
    :goto_4
    :try_start_7
    throw v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1011
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 1012
    :goto_5
    :try_start_8
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 1016
    :goto_6
    :try_start_9
    invoke-virtual {v10}, Lc8/BBb;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 1020
    :goto_7
    :try_start_a
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 1022
    :goto_8
    throw v4

    .line 1030
    .end local v10    # "b64os":Lc8/BBb;
    .end local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v18    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :cond_4
    and-int/lit8 v4, p3, 0x8

    if-eqz v4, :cond_7

    const/4 v14, 0x1

    .line 1039
    .local v14, "breakLines":Z
    :goto_9
    div-int/lit8 v4, p2, 0x3

    shl-int/lit8 v5, v4, 0x2

    rem-int/lit8 v4, p2, 0x3

    if-lez v4, :cond_8

    const/4 v4, 0x4

    :goto_a
    add-int v16, v5, v4

    .line 1042
    .local v16, "encLen":I
    if-eqz v14, :cond_5

    .line 1043
    div-int/lit8 v4, v16, 0x4c

    add-int v16, v16, v4

    .line 1046
    :cond_5
    move/from16 v0, v16

    new-array v7, v0, [B

    .line 1048
    .local v7, "outBuff":[B
    const/4 v15, 0x0

    .line 1049
    .local v15, "d":I
    const/4 v8, 0x0

    .line 1050
    .local v8, "e":I
    add-int/lit8 v20, p2, -0x2

    .line 1051
    .local v20, "len2":I
    const/16 v21, 0x0

    .line 1052
    .local v21, "lineLength":I
    :goto_b
    move/from16 v0, v20

    if-ge v15, v0, :cond_9

    .line 1053
    add-int v5, v15, p1

    const/4 v6, 0x3

    move-object/from16 v4, p0

    move/from16 v9, p3

    invoke-static/range {v4 .. v9}, Lc8/CBb;->encode3to4([BII[BII)[B

    .line 1055
    add-int/lit8 v21, v21, 0x4

    .line 1056
    if-eqz v14, :cond_6

    const/16 v4, 0x4c

    move/from16 v0, v21

    if-lt v0, v4, :cond_6

    .line 1057
    add-int/lit8 v4, v8, 0x4

    const/16 v5, 0xa

    aput-byte v5, v7, v4

    .line 1058
    add-int/lit8 v8, v8, 0x1

    .line 1059
    const/16 v21, 0x0

    .line 1052
    :cond_6
    add-int/lit8 v15, v15, 0x3

    add-int/lit8 v8, v8, 0x4

    goto :goto_b

    .line 1030
    .end local v7    # "outBuff":[B
    .end local v8    # "e":I
    .end local v14    # "breakLines":Z
    .end local v15    # "d":I
    .end local v16    # "encLen":I
    .end local v20    # "len2":I
    .end local v21    # "lineLength":I
    :cond_7
    const/4 v14, 0x0

    goto :goto_9

    .line 1039
    .restart local v14    # "breakLines":Z
    :cond_8
    const/4 v4, 0x0

    goto :goto_a

    .line 1063
    .restart local v7    # "outBuff":[B
    .restart local v8    # "e":I
    .restart local v15    # "d":I
    .restart local v16    # "encLen":I
    .restart local v20    # "len2":I
    .restart local v21    # "lineLength":I
    :cond_9
    move/from16 v0, p2

    if-ge v15, v0, :cond_a

    .line 1064
    add-int v5, v15, p1

    sub-int v6, p2, v15

    move-object/from16 v4, p0

    move/from16 v9, p3

    invoke-static/range {v4 .. v9}, Lc8/CBb;->encode3to4([BII[BII)[B

    .line 1065
    add-int/lit8 v8, v8, 0x4

    .line 1069
    :cond_a
    array-length v4, v7

    add-int/lit8 v4, v4, -0x1

    if-gt v8, v4, :cond_b

    .line 1074
    new-array v0, v8, [B

    move-object/from16 v17, v0

    .line 1075
    .local v17, "finalOut":[B
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-static {v7, v4, v0, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .end local v17    # "finalOut":[B
    :cond_b
    move-object/from16 v17, v7

    .line 1081
    goto/16 :goto_3

    .end local v7    # "outBuff":[B
    .end local v8    # "e":I
    .end local v14    # "breakLines":Z
    .end local v15    # "d":I
    .end local v16    # "encLen":I
    .end local v20    # "len2":I
    .end local v21    # "lineLength":I
    .restart local v11    # "b64os":Lc8/BBb;
    .restart local v13    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v19    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :catch_1
    move-exception v4

    goto/16 :goto_0

    :catch_2
    move-exception v4

    goto/16 :goto_1

    .line 1023
    :catch_3
    move-exception v4

    goto/16 :goto_2

    .end local v11    # "b64os":Lc8/BBb;
    .end local v13    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v19    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v10    # "b64os":Lc8/BBb;
    .restart local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v18    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :catch_4
    move-exception v5

    goto/16 :goto_6

    :catch_5
    move-exception v5

    goto/16 :goto_7

    :catch_6
    move-exception v5

    goto/16 :goto_8

    .line 1011
    .end local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v13    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v4

    move-object v12, v13

    .end local v13    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_5

    .end local v10    # "b64os":Lc8/BBb;
    .end local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "b64os":Lc8/BBb;
    .restart local v13    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v4

    move-object v10, v11

    .end local v11    # "b64os":Lc8/BBb;
    .restart local v10    # "b64os":Lc8/BBb;
    move-object v12, v13

    .end local v13    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_5

    .end local v10    # "b64os":Lc8/BBb;
    .end local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v18    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v11    # "b64os":Lc8/BBb;
    .restart local v13    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v19    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :catchall_3
    move-exception v4

    move-object v10, v11

    .end local v11    # "b64os":Lc8/BBb;
    .restart local v10    # "b64os":Lc8/BBb;
    move-object/from16 v18, v19

    .end local v19    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v18    # "gzos":Ljava/util/zip/GZIPOutputStream;
    move-object v12, v13

    .end local v13    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_5

    .line 1005
    .end local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v13    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_7
    move-exception v8

    move-object v12, v13

    .end local v13    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_4

    .end local v10    # "b64os":Lc8/BBb;
    .end local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "b64os":Lc8/BBb;
    .restart local v13    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_8
    move-exception v8

    move-object v10, v11

    .end local v11    # "b64os":Lc8/BBb;
    .restart local v10    # "b64os":Lc8/BBb;
    move-object v12, v13

    .end local v13    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_4

    .end local v10    # "b64os":Lc8/BBb;
    .end local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v18    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v11    # "b64os":Lc8/BBb;
    .restart local v13    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v19    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :catch_9
    move-exception v8

    move-object v10, v11

    .end local v11    # "b64os":Lc8/BBb;
    .restart local v10    # "b64os":Lc8/BBb;
    move-object/from16 v18, v19

    .end local v19    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v18    # "gzos":Ljava/util/zip/GZIPOutputStream;
    move-object v12, v13

    .end local v13    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_4
.end method

.method public static encodeFileToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "infile"    # Ljava/lang/String;
    .param p1, "outfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1701
    invoke-static {p0}, Lc8/CBb;->encodeFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1702
    .local v1, "encoded":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1704
    .local v2, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1706
    .end local v2    # "out":Ljava/io/OutputStream;
    .local v3, "out":Ljava/io/OutputStream;
    :try_start_1
    const-string/jumbo v4, "US-ASCII"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1713
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1716
    :goto_0
    return-void

    .line 1708
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 1709
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1712
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 1713
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1715
    :goto_3
    throw v4

    .line 1716
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v4

    goto :goto_0

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_2
    move-exception v5

    goto :goto_3

    .line 1712
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_2

    .line 1708
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_1
.end method

.method public static encodeFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1653
    const/4 v0, 0x0

    .line 1656
    .local v0, "bis":Lc8/ABb;
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1657
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-double v8, v8

    const-wide v10, 0x3ff6666666666666L    # 1.4

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v10

    double-to-int v8, v8

    const/16 v9, 0x28

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    new-array v2, v8, [B

    .line 1660
    .local v2, "buffer":[B
    const/4 v6, 0x0

    .line 1664
    .local v6, "length":I
    new-instance v1, Lc8/ABb;

    new-instance v8, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v9, 0x1

    invoke-direct {v1, v8, v9}, Lc8/ABb;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1668
    .end local v0    # "bis":Lc8/ABb;
    .local v1, "bis":Lc8/ABb;
    :goto_0
    const/16 v8, 0x1000

    :try_start_1
    invoke-virtual {v1, v2, v6, v8}, Lc8/ABb;->read([BII)I

    move-result v7

    .local v7, "numBytes":I
    if-ltz v7, :cond_0

    .line 1669
    add-int/2addr v6, v7

    goto :goto_0

    .line 1673
    :cond_0
    new-instance v4, Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "US-ASCII"

    invoke-direct {v4, v2, v8, v6, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1682
    .local v4, "encodedData":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v1}, Lc8/ABb;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1687
    :goto_1
    return-object v4

    .line 1677
    .end local v1    # "bis":Lc8/ABb;
    .end local v2    # "buffer":[B
    .end local v4    # "encodedData":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "length":I
    .end local v7    # "numBytes":I
    .restart local v0    # "bis":Lc8/ABb;
    :catch_0
    move-exception v3

    .line 1678
    .local v3, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1681
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 1682
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Lc8/ABb;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1684
    :goto_4
    throw v8

    .line 1685
    .end local v0    # "bis":Lc8/ABb;
    .restart local v1    # "bis":Lc8/ABb;
    .restart local v2    # "buffer":[B
    .restart local v4    # "encodedData":Ljava/lang/String;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "length":I
    .restart local v7    # "numBytes":I
    :catch_1
    move-exception v8

    goto :goto_1

    .end local v1    # "bis":Lc8/ABb;
    .end local v2    # "buffer":[B
    .end local v4    # "encodedData":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "length":I
    .end local v7    # "numBytes":I
    .restart local v0    # "bis":Lc8/ABb;
    :catch_2
    move-exception v9

    goto :goto_4

    .line 1681
    .end local v0    # "bis":Lc8/ABb;
    .restart local v1    # "bis":Lc8/ABb;
    .restart local v2    # "buffer":[B
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "length":I
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "bis":Lc8/ABb;
    .restart local v0    # "bis":Lc8/ABb;
    goto :goto_3

    .line 1677
    .end local v0    # "bis":Lc8/ABb;
    .restart local v1    # "bis":Lc8/ABb;
    :catch_3
    move-exception v3

    move-object v0, v1

    .end local v1    # "bis":Lc8/ABb;
    .restart local v0    # "bis":Lc8/ABb;
    goto :goto_2
.end method

.method public static encodeObject(Ljava/io/Serializable;)Ljava/lang/String;
    .locals 1
    .param p0, "serializableObject"    # Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 687
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lc8/CBb;->encodeObject(Ljava/io/Serializable;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeObject(Ljava/io/Serializable;I)Ljava/lang/String;
    .locals 12
    .param p0, "serializableObject"    # Ljava/io/Serializable;
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 726
    if-nez p0, :cond_0

    .line 727
    new-instance v9, Ljava/lang/NullPointerException;

    const-string/jumbo v10, "Cannot serialize a null object."

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 731
    :cond_0
    const/4 v2, 0x0

    .line 732
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v0, 0x0

    .line 733
    .local v0, "b64os":Ljava/io/OutputStream;
    const/4 v5, 0x0

    .line 734
    .local v5, "gzos":Ljava/util/zip/GZIPOutputStream;
    const/4 v7, 0x0

    .line 738
    .local v7, "oos":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 739
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v3, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v1, Lc8/BBb;

    or-int/lit8 v9, p1, 0x1

    invoke-direct {v1, v3, v9}, Lc8/BBb;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 740
    .end local v0    # "b64os":Ljava/io/OutputStream;
    .local v1, "b64os":Ljava/io/OutputStream;
    and-int/lit8 v9, p1, 0x2

    if-eqz v9, :cond_1

    .line 742
    :try_start_2
    new-instance v6, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v6, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 743
    .end local v5    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .local v6, "gzos":Ljava/util/zip/GZIPOutputStream;
    :try_start_3
    new-instance v8, Ljava/io/ObjectOutputStream;

    invoke-direct {v8, v6}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .end local v7    # "oos":Ljava/io/ObjectOutputStream;
    .local v8, "oos":Ljava/io/ObjectOutputStream;
    move-object v7, v8

    .end local v8    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v7    # "oos":Ljava/io/ObjectOutputStream;
    move-object v5, v6

    .line 748
    .end local v6    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :goto_0
    :try_start_4
    invoke-virtual {v7, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 757
    :try_start_5
    invoke-virtual {v7}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 761
    :goto_1
    :try_start_6
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 765
    :goto_2
    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 769
    :goto_3
    :try_start_8
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 776
    :goto_4
    :try_start_9
    new-instance v9, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    const-string/jumbo v11, "US-ASCII"

    invoke-direct {v9, v10, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_1

    .line 780
    :goto_5
    return-object v9

    .line 746
    :cond_1
    :try_start_a
    new-instance v8, Ljava/io/ObjectOutputStream;

    invoke-direct {v8, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .end local v7    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v8    # "oos":Ljava/io/ObjectOutputStream;
    move-object v7, v8

    .end local v8    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v7    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_0

    .line 750
    .end local v1    # "b64os":Ljava/io/OutputStream;
    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "b64os":Ljava/io/OutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v4

    .line 753
    .local v4, "e":Ljava/io/IOException;
    :goto_6
    :try_start_b
    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 756
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 757
    :goto_7
    :try_start_c
    invoke-virtual {v7}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    .line 761
    :goto_8
    :try_start_d
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    .line 765
    :goto_9
    :try_start_e
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    .line 769
    :goto_a
    :try_start_f
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    .line 771
    :goto_b
    throw v9

    .line 780
    .end local v0    # "b64os":Ljava/io/OutputStream;
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "b64os":Ljava/io/OutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v9

    new-instance v9, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([B)V

    goto :goto_5

    :catch_2
    move-exception v9

    goto :goto_1

    :catch_3
    move-exception v9

    goto :goto_2

    :catch_4
    move-exception v9

    goto :goto_3

    .line 772
    :catch_5
    move-exception v9

    goto :goto_4

    .end local v1    # "b64os":Ljava/io/OutputStream;
    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "b64os":Ljava/io/OutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_6
    move-exception v10

    goto :goto_8

    :catch_7
    move-exception v10

    goto :goto_9

    :catch_8
    move-exception v10

    goto :goto_a

    :catch_9
    move-exception v10

    goto :goto_b

    .line 756
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v9

    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_7

    .end local v0    # "b64os":Ljava/io/OutputStream;
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "b64os":Ljava/io/OutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v9

    move-object v0, v1

    .end local v1    # "b64os":Ljava/io/OutputStream;
    .restart local v0    # "b64os":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_7

    .end local v0    # "b64os":Ljava/io/OutputStream;
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "b64os":Ljava/io/OutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :catchall_3
    move-exception v9

    move-object v5, v6

    .end local v6    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "gzos":Ljava/util/zip/GZIPOutputStream;
    move-object v0, v1

    .end local v1    # "b64os":Ljava/io/OutputStream;
    .restart local v0    # "b64os":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_7

    .line 750
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_a
    move-exception v4

    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_6

    .end local v0    # "b64os":Ljava/io/OutputStream;
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "b64os":Ljava/io/OutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_b
    move-exception v4

    move-object v0, v1

    .end local v1    # "b64os":Ljava/io/OutputStream;
    .restart local v0    # "b64os":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_6

    .end local v0    # "b64os":Ljava/io/OutputStream;
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "b64os":Ljava/io/OutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :catch_c
    move-exception v4

    move-object v5, v6

    .end local v6    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "gzos":Ljava/util/zip/GZIPOutputStream;
    move-object v0, v1

    .end local v1    # "b64os":Ljava/io/OutputStream;
    .restart local v0    # "b64os":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_6
.end method

.method public static encodeToFile([BLjava/lang/String;)V
    .locals 5
    .param p0, "dataToEncode"    # [B
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1514
    if-nez p0, :cond_0

    .line 1515
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "Data to encode was null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1518
    :cond_0
    const/4 v0, 0x0

    .line 1520
    .local v0, "bos":Lc8/BBb;
    :try_start_0
    new-instance v1, Lc8/BBb;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lc8/BBb;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1522
    .end local v0    # "bos":Lc8/BBb;
    .local v1, "bos":Lc8/BBb;
    :try_start_1
    invoke-virtual {v1, p0}, Lc8/BBb;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1529
    :try_start_2
    invoke-virtual {v1}, Lc8/BBb;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1532
    :goto_0
    return-void

    .line 1524
    .end local v1    # "bos":Lc8/BBb;
    .restart local v0    # "bos":Lc8/BBb;
    :catch_0
    move-exception v2

    .line 1525
    .local v2, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1528
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 1529
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Lc8/BBb;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1531
    :goto_3
    throw v3

    .line 1532
    .end local v0    # "bos":Lc8/BBb;
    .restart local v1    # "bos":Lc8/BBb;
    :catch_1
    move-exception v3

    goto :goto_0

    .end local v1    # "bos":Lc8/BBb;
    .restart local v0    # "bos":Lc8/BBb;
    :catch_2
    move-exception v4

    goto :goto_3

    .line 1528
    .end local v0    # "bos":Lc8/BBb;
    .restart local v1    # "bos":Lc8/BBb;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "bos":Lc8/BBb;
    .restart local v0    # "bos":Lc8/BBb;
    goto :goto_2

    .line 1524
    .end local v0    # "bos":Lc8/BBb;
    .restart local v1    # "bos":Lc8/BBb;
    :catch_3
    move-exception v2

    move-object v0, v1

    .end local v1    # "bos":Lc8/BBb;
    .restart local v0    # "bos":Lc8/BBb;
    goto :goto_1
.end method

.method private static final getAlphabet(I)[B
    .locals 2
    .param p0, "options"    # I

    .prologue
    .line 492
    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 493
    sget-object v0, Lc8/CBb;->_URL_SAFE_ALPHABET:[B

    .line 497
    :goto_0
    return-object v0

    .line 494
    :cond_0
    and-int/lit8 v0, p0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 495
    sget-object v0, Lc8/CBb;->_ORDERED_ALPHABET:[B

    goto :goto_0

    .line 497
    :cond_1
    sget-object v0, Lc8/CBb;->_STANDARD_ALPHABET:[B

    goto :goto_0
.end method

.method private static final getDecodabet(I)[B
    .locals 2
    .param p0, "options"    # I

    .prologue
    .line 508
    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 509
    sget-object v0, Lc8/CBb;->_URL_SAFE_DECODABET:[B

    .line 513
    :goto_0
    return-object v0

    .line 510
    :cond_0
    and-int/lit8 v0, p0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 511
    sget-object v0, Lc8/CBb;->_ORDERED_DECODABET:[B

    goto :goto_0

    .line 513
    :cond_1
    sget-object v0, Lc8/CBb;->_STANDARD_DECODABET:[B

    goto :goto_0
.end method
