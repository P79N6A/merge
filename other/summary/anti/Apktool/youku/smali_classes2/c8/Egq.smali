.class public Lc8/Egq;
.super Ljava/lang/Object;
.source "Endpoints.java"

# interfaces
.implements Lc8/Dgq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Fgq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FixedEndpoint"
.end annotation


# instance fields
.field private final apiUrl:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "apiUrl"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lc8/Egq;->apiUrl:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lc8/Egq;->name:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lc8/Egq;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lc8/Egq;->apiUrl:Ljava/lang/String;

    return-object v0
.end method
