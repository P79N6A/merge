.class public final Lc8/Bvf;
.super Ljava/lang/Object;
.source "LinkedBytesPool.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Cvf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<[B>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 33
    check-cast p1, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lc8/Bvf;->compare([B[B)I

    move-result v0

    return v0
.end method

.method public compare([B[B)I
    .locals 2
    .param p1, "lhs"    # [B
    .param p2, "rhs"    # [B

    .prologue
    .line 36
    array-length v0, p1

    array-length v1, p2

    sub-int/2addr v0, v1

    return v0
.end method
