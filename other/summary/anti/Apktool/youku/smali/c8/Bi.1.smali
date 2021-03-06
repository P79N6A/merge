.class public final Lc8/Bi;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat$MessagingStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Message"
.end annotation


# static fields
.field static final KEY_DATA_MIME_TYPE:Ljava/lang/String; = "type"

.field static final KEY_DATA_URI:Ljava/lang/String; = "uri"

.field static final KEY_SENDER:Ljava/lang/String; = "sender"

.field static final KEY_TEXT:Ljava/lang/String; = "text"

.field static final KEY_TIMESTAMP:Ljava/lang/String; = "time"


# instance fields
.field private mDataMimeType:Ljava/lang/String;

.field private mDataUri:Landroid/net/Uri;

.field private final mSender:Ljava/lang/CharSequence;

.field private final mText:Ljava/lang/CharSequence;

.field private final mTimestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "timestamp"    # J
    .param p4, "sender"    # Ljava/lang/CharSequence;

    .prologue
    .line 2224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2225
    iput-object p1, p0, Lc8/Bi;->mText:Ljava/lang/CharSequence;

    .line 2226
    iput-wide p2, p0, Lc8/Bi;->mTimestamp:J

    .line 2227
    iput-object p4, p0, Lc8/Bi;->mSender:Ljava/lang/CharSequence;

    .line 2228
    return-void
.end method

.method public static getBundleArrayForMessages(Ljava/util/List;)[Landroid/os/Bundle;
    .locals 4
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/Bi;",
            ">;)[",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 2319
    .local p0, "messages":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    new-array v1, v3, [Landroid/os/Bundle;

    .line 2320
    .local v1, "bundles":[Landroid/os/Bundle;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 2321
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2322
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/Bi;

    invoke-direct {v3}, Lc8/Bi;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2321
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2324
    :cond_0
    return-object v1
.end method

.method static getMessageFromBundle(Landroid/os/Bundle;)Lc8/Bi;
    .locals 6
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 2342
    :try_start_0
    const-string/jumbo v1, "text"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "time"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    move-object v0, v2

    .line 2356
    :cond_1
    :goto_0
    return-object v0

    .line 2345
    :cond_2
    new-instance v0, Lc8/Bi;

    const-string/jumbo v1, "text"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    const-string/jumbo v3, "time"

    .line 2346
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string/jumbo v3, "sender"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v0, v1, v4, v5, v3}, Lc8/Bi;-><init>(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)V

    .line 2347
    .local v0, "message":Lc8/Bi;
    const-string/jumbo v1, "type"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "uri"

    .line 2348
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2350
    const-string/jumbo v1, "type"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, "uri"

    .line 2351
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 2350
    invoke-virtual {v0, v3, v1}, Lc8/Bi;->setData(Ljava/lang/String;Landroid/net/Uri;)Lc8/Bi;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2356
    .end local v0    # "message":Lc8/Bi;
    :catch_0
    move-exception v1

    move-object v0, v2

    goto :goto_0
.end method

.method public static getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;
    .locals 4
    .param p0, "bundles"    # [Landroid/os/Parcelable;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/Parcelable;",
            ")",
            "Ljava/util/List",
            "<",
            "Lc8/Bi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2328
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2329
    .local v2, "messages":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 2330
    aget-object v3, p0, v0

    instance-of v3, v3, Landroid/os/Bundle;

    if-eqz v3, :cond_0

    .line 2331
    aget-object v3, p0, v0

    check-cast v3, Landroid/os/Bundle;

    invoke-static {v3}, Lc8/Bi;->getMessageFromBundle(Landroid/os/Bundle;)Lc8/Bi;

    move-result-object v1

    .line 2332
    .local v1, "message":Lc8/Bi;
    if-eqz v1, :cond_0

    .line 2333
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2329
    .end local v1    # "message":Lc8/Bi;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2337
    :cond_1
    return-object v2
.end method

.method private toBundle()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 2301
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2302
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lc8/Bi;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 2303
    const-string/jumbo v1, "text"

    iget-object v2, p0, Lc8/Bi;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2305
    :cond_0
    const-string/jumbo v1, "time"

    iget-wide v2, p0, Lc8/Bi;->mTimestamp:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2306
    iget-object v1, p0, Lc8/Bi;->mSender:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 2307
    const-string/jumbo v1, "sender"

    iget-object v2, p0, Lc8/Bi;->mSender:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2309
    :cond_1
    iget-object v1, p0, Lc8/Bi;->mDataMimeType:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 2310
    const-string/jumbo v1, "type"

    iget-object v2, p0, Lc8/Bi;->mDataMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2312
    :cond_2
    iget-object v1, p0, Lc8/Bi;->mDataUri:Landroid/net/Uri;

    if-eqz v1, :cond_3

    .line 2313
    const-string/jumbo v1, "uri"

    iget-object v2, p0, Lc8/Bi;->mDataUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2315
    :cond_3
    return-object v0
.end method


# virtual methods
.method public getDataMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2289
    iget-object v0, p0, Lc8/Bi;->mDataMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getDataUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 2297
    iget-object v0, p0, Lc8/Bi;->mDataUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSender()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2282
    iget-object v0, p0, Lc8/Bi;->mSender:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2268
    iget-object v0, p0, Lc8/Bi;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 2275
    iget-wide v0, p0, Lc8/Bi;->mTimestamp:J

    return-wide v0
.end method

.method public setData(Ljava/lang/String;Landroid/net/Uri;)Lc8/Bi;
    .locals 0
    .param p1, "dataMimeType"    # Ljava/lang/String;
    .param p2, "dataUri"    # Landroid/net/Uri;

    .prologue
    .line 2258
    iput-object p1, p0, Lc8/Bi;->mDataMimeType:Ljava/lang/String;

    .line 2259
    iput-object p2, p0, Lc8/Bi;->mDataUri:Landroid/net/Uri;

    .line 2260
    return-object p0
.end method
