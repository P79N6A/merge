.class public Lc8/XKd;
.super Ljava/lang/Object;
.source "RequestResult.java"


# instance fields
.field private final eventIds:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final success:Z


# direct methods
.method public constructor <init>(ZLjava/util/LinkedList;)V
    .locals 0
    .param p1, "success"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, "eventIds":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean p1, p0, Lc8/XKd;->success:Z

    .line 34
    iput-object p2, p0, Lc8/XKd;->eventIds:Ljava/util/LinkedList;

    .line 35
    return-void
.end method


# virtual methods
.method public getEventIds()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lc8/XKd;->eventIds:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getSuccess()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lc8/XKd;->success:Z

    return v0
.end method
