.class public abstract Lc8/uXe;
.super Ljava/lang/Object;
.source "BaseDO.java"


# static fields
.field public static final JSON_CMD:Ljava/lang/String; = "cmd"

.field public static final JSON_DEVICE_ID:Ljava/lang/String; = "deviceId"

.field public static final JSON_ERRORCODE:Ljava/lang/String; = "resultCode"

.field public static final JSON_SUCCESS:Ljava/lang/String; = "success"

.field public static final JSON_UTDID:Ljava/lang/String; = "utdid"


# instance fields
.field public cmd:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract buildData()[B
.end method
