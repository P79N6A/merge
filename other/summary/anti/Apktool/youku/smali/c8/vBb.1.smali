.class public abstract Lc8/vBb;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/yBb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Coder"
.end annotation


# instance fields
.field public op:I

.field public output:[B


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract maxOutputSize(I)I
.end method

.method public abstract process([BIIZ)Z
.end method
