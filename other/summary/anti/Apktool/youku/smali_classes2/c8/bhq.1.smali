.class public Lc8/bhq;
.super Ljava/lang/Object;
.source "RequestBuilder.java"

# interfaces
.implements Lc8/Hiq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/chq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MimeOverridingTypedOutput"
.end annotation


# instance fields
.field private final delegate:Lc8/Hiq;

.field private final mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/Hiq;Ljava/lang/String;)V
    .locals 0
    .param p1, "delegate"    # Lc8/Hiq;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    iput-object p1, p0, Lc8/bhq;->delegate:Lc8/Hiq;

    .line 427
    iput-object p2, p0, Lc8/bhq;->mimeType:Ljava/lang/String;

    .line 428
    return-void
.end method


# virtual methods
.method public fileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lc8/bhq;->delegate:Lc8/Hiq;

    invoke-interface {v0}, Lc8/Hiq;->fileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public length()J
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lc8/bhq;->delegate:Lc8/Hiq;

    invoke-interface {v0}, Lc8/Hiq;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public mimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lc8/bhq;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 443
    iget-object v0, p0, Lc8/bhq;->delegate:Lc8/Hiq;

    invoke-interface {v0, p1}, Lc8/Hiq;->writeTo(Ljava/io/OutputStream;)V

    .line 444
    return-void
.end method
