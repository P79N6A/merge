.class public final Lc8/dtq;
.super Ljava/lang/Object;
.source "OperatorOnErrorResumeNextViaFunction.java"

# interfaces
.implements Lc8/Inq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/htq;->withOther(Lc8/Vlq;)Lc8/htq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Inq",
        "<",
        "Ljava/lang/Throwable;",
        "Lc8/Vlq",
        "<+TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$other:Lc8/Vlq;


# direct methods
.method constructor <init>(Lc8/Vlq;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lc8/dtq;->val$other:Lc8/Vlq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Throwable;)Lc8/Vlq;
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lc8/Vlq",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lc8/dtq;->val$other:Lc8/Vlq;

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 59
    check-cast p1, Ljava/lang/Throwable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/dtq;->call(Ljava/lang/Throwable;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method
