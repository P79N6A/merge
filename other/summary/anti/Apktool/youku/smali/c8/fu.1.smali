.class public final Lc8/fu;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/iu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MutableInt"
.end annotation


# instance fields
.field public value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1992
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1993
    invoke-virtual {p0}, Lc8/fu;->reset()V

    .line 1994
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 1996
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1997
    iput p1, p0, Lc8/fu;->value:I

    .line 1998
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .prologue
    .line 2001
    const/high16 v0, -0x80000000

    iput v0, p0, Lc8/fu;->value:I

    .line 2002
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2006
    iget v0, p0, Lc8/fu;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
