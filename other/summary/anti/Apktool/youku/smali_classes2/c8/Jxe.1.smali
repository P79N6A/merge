.class public Lc8/Jxe;
.super Lc8/Lxe;
.source "AdEventLog.java"


# instance fields
.field private mAid:Ljava/lang/String;

.field private mAppkey:Ljava/lang/String;

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

.field private mImei:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lc8/Lxe;-><init>()V

    .line 14
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/Jxe;->mAid:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/Jxe;->mAppkey:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public getmAid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lc8/Jxe;->mAid:Ljava/lang/String;

    return-object v0
.end method

.method public getmAppkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lc8/Jxe;->mAppkey:Ljava/lang/String;

    return-object v0
.end method

.method public getmExtend()Ljava/util/Map;
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
    .line 33
    iget-object v0, p0, Lc8/Jxe;->mExtend:Ljava/util/Map;

    return-object v0
.end method

.method public getmImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lc8/Jxe;->mImei:Ljava/lang/String;

    return-object v0
.end method

.method public setmAid(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAid"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lc8/Jxe;->mAid:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setmAppkey(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAppkey"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lc8/Jxe;->mAppkey:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setmExtend(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "mExtend":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lc8/Jxe;->mExtend:Ljava/util/Map;

    .line 38
    return-void
.end method

.method public setmImei(Ljava/lang/String;)V
    .locals 0
    .param p1, "mImei"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lc8/Jxe;->mImei:Ljava/lang/String;

    .line 54
    return-void
.end method
