.class public Lc8/Tvb;
.super Ljava/lang/Object;
.source "NearlyAroundItem.java"


# instance fields
.field private name:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lc8/Tvb;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lc8/Tvb;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lc8/Tvb;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lc8/Tvb;->name:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lc8/Tvb;->title:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lc8/Tvb;->url:Ljava/lang/String;

    .line 25
    return-void
.end method
