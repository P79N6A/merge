.class public final enum Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;
.super Ljava/lang/Enum;
.source "VerifyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/verificationsdk/ui/VerifyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ERROR_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;

.field public static final enum ERROR_FROM_BUSSINESS:Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;

.field public static final enum ERROR_FROM_CLIENT:Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;

.field public static final enum ERROR_FROM_SERVER:Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1385
    new-instance v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;

    const-string/jumbo v1, "ERROR_FROM_SERVER"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;->ERROR_FROM_SERVER:Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;

    new-instance v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;

    const-string/jumbo v1, "ERROR_FROM_CLIENT"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;->ERROR_FROM_CLIENT:Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;

    new-instance v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;

    const-string/jumbo v1, "ERROR_FROM_BUSSINESS"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;->ERROR_FROM_BUSSINESS:Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;

    sget-object v1, Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;->ERROR_FROM_SERVER:Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;->ERROR_FROM_CLIENT:Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;->ERROR_FROM_BUSSINESS:Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;->$VALUES:[Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1385
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1385
    const-class v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;
    .locals 1

    .prologue
    .line 1385
    sget-object v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;->$VALUES:[Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;

    invoke-virtual {v0}, [Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;

    return-object v0
.end method
