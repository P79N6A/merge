.class public Lc8/QKd;
.super Ljava/lang/Object;
.source "SelfDescribingJson.java"

# interfaces
.implements Lc8/PKd;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final payload:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "schema"    # Ljava/lang/String;

    .prologue
    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, v0}, Lc8/QKd;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lc8/QKd;)V
    .locals 1
    .param p1, "schema"    # Ljava/lang/String;
    .param p2, "data"    # Lc8/QKd;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-class v0, Lc8/QKd;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/QKd;->TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/QKd;->payload:Ljava/util/HashMap;

    .line 63
    invoke-virtual {p0, p1}, Lc8/QKd;->setSchema(Ljava/lang/String;)Lc8/QKd;

    .line 64
    invoke-virtual {p0, p2}, Lc8/QKd;->setData(Lc8/QKd;)Lc8/QKd;

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lc8/RKd;)V
    .locals 1
    .param p1, "schema"    # Ljava/lang/String;
    .param p2, "data"    # Lc8/RKd;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-class v0, Lc8/QKd;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/QKd;->TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/QKd;->payload:Ljava/util/HashMap;

    .line 51
    invoke-virtual {p0, p1}, Lc8/QKd;->setSchema(Ljava/lang/String;)Lc8/QKd;

    .line 52
    invoke-virtual {p0, p2}, Lc8/QKd;->setData(Lc8/RKd;)Lc8/QKd;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "schema"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-class v0, Lc8/QKd;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/QKd;->TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/QKd;->payload:Ljava/util/HashMap;

    .line 75
    invoke-virtual {p0, p1}, Lc8/QKd;->setSchema(Ljava/lang/String;)Lc8/QKd;

    .line 76
    invoke-virtual {p0, p2}, Lc8/QKd;->setData(Ljava/lang/Object;)Lc8/QKd;

    .line 77
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lc8/QKd;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Payload: add(String, Object) method called - Doing nothing."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/yLd;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    return-void
.end method

.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lc8/QKd;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Payload: add(String, String) method called - Doing nothing."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/yLd;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    return-void
.end method

.method public addMap(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 165
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lc8/QKd;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Payload: addMap(Map<String, Object>) method called - Doing nothing."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/yLd;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    return-void
.end method

.method public addMap(Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "map"    # Ljava/util/Map;
    .param p2, "base64_encoded"    # Ljava/lang/Boolean;
    .param p3, "type_encoded"    # Ljava/lang/String;
    .param p4, "type_no_encoded"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lc8/QKd;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Payload: addMap(Map, Boolean, String, String) method called - Doing nothing."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/yLd;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    return-void
.end method

.method public getByteSize()J
    .locals 2

    .prologue
    .line 188
    invoke-virtual {p0}, Lc8/QKd;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/ALd;->getUTF8Length(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lc8/QKd;->payload:Ljava/util/HashMap;

    return-object v0
.end method

.method public setData(Lc8/QKd;)Lc8/QKd;
    .locals 3
    .param p1, "selfDescribingJson"    # Lc8/QKd;

    .prologue
    .line 131
    iget-object v0, p0, Lc8/QKd;->payload:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 135
    :goto_0
    return-object p0

    .line 134
    :cond_0
    iget-object v0, p0, Lc8/QKd;->payload:Ljava/util/HashMap;

    const-string/jumbo v1, "dt"

    invoke-virtual {p1}, Lc8/QKd;->getMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setData(Lc8/RKd;)Lc8/QKd;
    .locals 3
    .param p1, "trackerDataload"    # Lc8/RKd;

    .prologue
    .line 101
    if-nez p1, :cond_0

    .line 105
    :goto_0
    return-object p0

    .line 104
    :cond_0
    iget-object v0, p0, Lc8/QKd;->payload:Ljava/util/HashMap;

    const-string/jumbo v1, "dt"

    invoke-virtual {p1}, Lc8/RKd;->getMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setData(Ljava/lang/Object;)Lc8/QKd;
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 116
    if-nez p1, :cond_0

    .line 120
    :goto_0
    return-object p0

    .line 119
    :cond_0
    iget-object v0, p0, Lc8/QKd;->payload:Ljava/util/HashMap;

    const-string/jumbo v1, "dt"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setSchema(Ljava/lang/String;)Lc8/QKd;
    .locals 2
    .param p1, "schema"    # Ljava/lang/String;

    .prologue
    .line 87
    const-string/jumbo v0, "schema cannot be null"

    invoke-static {p1, v0}, Lc8/zLd;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "schema cannot be empty."

    invoke-static {v0, v1}, Lc8/zLd;->checkArgument(ZLjava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lc8/QKd;->payload:Ljava/util/HashMap;

    const-string/jumbo v1, "sa"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-object p0

    .line 88
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lc8/QKd;->payload:Ljava/util/HashMap;

    invoke-static {v0}, Lc8/ALd;->mapToJSONObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
