.class public Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException;
.super Ljava/lang/Exception;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/cmg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkUnavailableException"
.end annotation


# static fields
.field public static final ERROR_INFO:Ljava/lang/String; = "network unavailable"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 175
    return-void
.end method
