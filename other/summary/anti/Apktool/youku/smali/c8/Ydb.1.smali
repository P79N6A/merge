.class public Lc8/Ydb;
.super Ljava/lang/Object;
.source "AnimatableIntegerValue.java"

# interfaces
.implements Lc8/ueb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Zdb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ValueFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/ueb",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lc8/Ydb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lc8/Ydb;

    invoke-direct {v0}, Lc8/Ydb;-><init>()V

    sput-object v0, Lc8/Ydb;->INSTANCE:Lc8/Ydb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method static synthetic access$100()Lc8/Ydb;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lc8/Ydb;->INSTANCE:Lc8/Ydb;

    return-object v0
.end method


# virtual methods
.method public valueFromObject(Ljava/lang/Object;F)Ljava/lang/Integer;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "scale"    # F

    .prologue
    .line 64
    invoke-static {p1}, Lc8/Ffb;->valueFromObject(Ljava/lang/Object;)F

    move-result v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic valueFromObject(Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0, p1, p2}, Lc8/Ydb;->valueFromObject(Ljava/lang/Object;F)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
