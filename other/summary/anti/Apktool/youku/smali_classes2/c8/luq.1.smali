.class public final Lc8/luq;
.super Ljava/lang/Object;
.source "OperatorSkipWhile.java"

# interfaces
.implements Lc8/Jnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/muq;->toPredicate2(Lc8/Inq;)Lc8/Jnq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Jnq",
        "<TT;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$predicate:Lc8/Inq;


# direct methods
.method constructor <init>(Lc8/Inq;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lc8/luq;->val$predicate:Lc8/Inq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 1
    .param p2, "t2"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "t1":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/luq;->val$predicate:Lc8/Inq;

    invoke-interface {v0, p1}, Lc8/Inq;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 78
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lc8/luq;->call(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
