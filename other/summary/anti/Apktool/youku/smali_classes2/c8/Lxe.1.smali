.class public Lc8/Lxe;
.super Lc8/Qxe;
.source "EventLog.java"


# instance fields
.field private mEvent_id:Ljava/lang/String;

.field private mExtend:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lc8/Qxe;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "pageName"    # Ljava/lang/String;
    .param p2, "eventId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p3, "extend":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lc8/Qxe;-><init>(Ljava/lang/String;)V

    .line 18
    iput-object p2, p0, Lc8/Lxe;->mEvent_id:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lc8/Lxe;->mExtend:Ljava/util/Map;

    .line 20
    return-void
.end method


# virtual methods
.method public getEvent_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lc8/Lxe;->mEvent_id:Ljava/lang/String;

    return-object v0
.end method

.method public getExtend()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lc8/Lxe;->mExtend:Ljava/util/Map;

    return-object v0
.end method

.method public getmEvent_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lc8/Lxe;->mEvent_id:Ljava/lang/String;

    return-object v0
.end method

.method public setmEvent_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "mEvent_id"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lc8/Lxe;->mEvent_id:Ljava/lang/String;

    .line 36
    return-void
.end method
