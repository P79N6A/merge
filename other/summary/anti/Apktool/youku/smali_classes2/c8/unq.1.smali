.class public final Lc8/unq;
.super Ljava/lang/Object;
.source "Actions.java"

# interfaces
.implements Lc8/Rnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Gnq;->toFunc(Lc8/snq;Ljava/lang/Object;)Lc8/Rnq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Rnq",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$action:Lc8/snq;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lc8/snq;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 537
    iput-object p1, p0, Lc8/unq;->val$action:Lc8/snq;

    iput-object p2, p0, Lc8/unq;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 540
    iget-object v0, p0, Lc8/unq;->val$action:Lc8/snq;

    invoke-interface {v0, p1}, Lc8/snq;->call([Ljava/lang/Object;)V

    .line 541
    iget-object v0, p0, Lc8/unq;->val$result:Ljava/lang/Object;

    return-object v0
.end method
