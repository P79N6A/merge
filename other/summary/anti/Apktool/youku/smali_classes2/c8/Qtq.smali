.class public final Lc8/Qtq;
.super Ljava/lang/Object;
.source "OperatorSequenceEqual.java"

# interfaces
.implements Lc8/Jnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Rtq;->sequenceEqual(Lc8/Vlq;Lc8/Vlq;Lc8/Jnq;)Lc8/Vlq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Jnq",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$equality:Lc8/Jnq;


# direct methods
.method constructor <init>(Lc8/Jnq;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lc8/Qtq;->val$equality:Lc8/Jnq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "t1"    # Ljava/lang/Object;
    .param p2, "t2"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 76
    sget-object v4, Lc8/Rtq;->LOCAL_ONCOMPLETED:Ljava/lang/Object;

    if-ne p1, v4, :cond_0

    move v0, v2

    .line 77
    .local v0, "c1":Z
    :goto_0
    sget-object v4, Lc8/Rtq;->LOCAL_ONCOMPLETED:Ljava/lang/Object;

    if-ne p2, v4, :cond_1

    move v1, v2

    .line 78
    .local v1, "c2":Z
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 79
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 85
    :goto_2
    return-object v2

    .end local v0    # "c1":Z
    .end local v1    # "c2":Z
    :cond_0
    move v0, v3

    .line 76
    goto :goto_0

    .restart local v0    # "c1":Z
    :cond_1
    move v1, v3

    .line 77
    goto :goto_1

    .line 81
    .restart local v1    # "c2":Z
    :cond_2
    if-nez v0, :cond_3

    if-eqz v1, :cond_4

    .line 82
    :cond_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_2

    .line 85
    :cond_4
    iget-object v2, p0, Lc8/Qtq;->val$equality:Lc8/Jnq;

    invoke-interface {v2, p1, p2}, Lc8/Jnq;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    goto :goto_2
.end method

.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2}, Lc8/Qtq;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
