.class public Lc8/zMn;
.super Ljava/lang/Object;
.source "MediaPlayerProxy.java"

# interfaces
.implements Lc8/VMn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/KMn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/KMn;


# direct methods
.method constructor <init>(Lc8/KMn;)V
    .locals 0
    .param p1, "this$0"    # Lc8/KMn;

    .prologue
    .line 1752
    iput-object p1, p0, Lc8/zMn;->this$0:Lc8/KMn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCpuUsage(I)V
    .locals 2
    .param p1, "cpuUsage"    # I

    .prologue
    .line 1755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCpuUsage-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1756
    return-void
.end method
