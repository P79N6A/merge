.class public Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$SUEEntity;
.super Ljava/lang/Object;
.source "ADInfoDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SUEEntity"
.end annotation


# instance fields
.field private SDK:Ljava/lang/String;

.field private U:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 799
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSDK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$SUEEntity;->SDK:Ljava/lang/String;

    return-object v0
.end method

.method public getU()Ljava/lang/String;
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$SUEEntity;->U:Ljava/lang/String;

    return-object v0
.end method

.method public setSDK(Ljava/lang/String;)V
    .locals 0
    .param p1, "SDK"    # Ljava/lang/String;

    .prologue
    .line 828
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$SUEEntity;->SDK:Ljava/lang/String;

    .line 829
    return-void
.end method

.method public setU(Ljava/lang/String;)V
    .locals 0
    .param p1, "U"    # Ljava/lang/String;

    .prologue
    .line 820
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$SUEEntity;->U:Ljava/lang/String;

    .line 821
    return-void
.end method
