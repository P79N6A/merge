.class public Lc8/FIb;
.super Ljava/lang/Object;
.source "JSONWriter.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# instance fields
.field private context:Lc8/EIb;

.field private serializer:Lc8/wJb;

.field private writer:Lc8/JJb;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2
    .param p1, "out"    # Ljava/io/Writer;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lc8/JJb;

    invoke-direct {v0, p1}, Lc8/JJb;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lc8/FIb;->writer:Lc8/JJb;

    .line 23
    new-instance v0, Lc8/wJb;

    iget-object v1, p0, Lc8/FIb;->writer:Lc8/JJb;

    invoke-direct {v0, v1}, Lc8/wJb;-><init>(Lc8/JJb;)V

    iput-object v0, p0, Lc8/FIb;->serializer:Lc8/wJb;

    .line 24
    return-void
.end method

.method private afterWriter()V
    .locals 3

    .prologue
    .line 149
    iget-object v2, p0, Lc8/FIb;->context:Lc8/EIb;

    if-nez v2, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v2, p0, Lc8/FIb;->context:Lc8/EIb;

    iget v1, v2, Lc8/EIb;->state:I

    .line 154
    .local v1, "state":I
    const/4 v0, -0x1

    .line 155
    .local v0, "newState":I
    packed-switch v1, :pswitch_data_0

    .line 172
    :goto_1
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 173
    iget-object v2, p0, Lc8/FIb;->context:Lc8/EIb;

    iput v0, v2, Lc8/EIb;->state:I

    goto :goto_0

    .line 157
    :pswitch_0
    const/16 v0, 0x3eb

    .line 158
    goto :goto_1

    .line 161
    :pswitch_1
    const/16 v0, 0x3ea

    .line 162
    goto :goto_1

    .line 164
    :pswitch_2
    const/16 v0, 0x3ed

    goto :goto_1

    .line 155
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private beforeWrite()V
    .locals 2

    .prologue
    const/16 v1, 0x2c

    .line 126
    iget-object v0, p0, Lc8/FIb;->context:Lc8/EIb;

    if-nez v0, :cond_0

    .line 146
    :goto_0
    :pswitch_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lc8/FIb;->context:Lc8/EIb;

    iget v0, v0, Lc8/EIb;->state:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 135
    :pswitch_1
    iget-object v0, p0, Lc8/FIb;->writer:Lc8/JJb;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lc8/JJb;->write(I)V

    goto :goto_0

    .line 138
    :pswitch_2
    iget-object v0, p0, Lc8/FIb;->writer:Lc8/JJb;

    invoke-virtual {v0, v1}, Lc8/JJb;->write(I)V

    goto :goto_0

    .line 141
    :pswitch_3
    iget-object v0, p0, Lc8/FIb;->writer:Lc8/JJb;

    invoke-virtual {v0, v1}, Lc8/JJb;->write(I)V

    goto :goto_0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private beginStructure()V
    .locals 4

    .prologue
    .line 75
    iget-object v1, p0, Lc8/FIb;->context:Lc8/EIb;

    iget v0, v1, Lc8/EIb;->state:I

    .line 76
    .local v0, "state":I
    iget-object v1, p0, Lc8/FIb;->context:Lc8/EIb;

    iget v1, v1, Lc8/EIb;->state:I

    packed-switch v1, :pswitch_data_0

    .line 88
    :pswitch_0
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "illegal state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :pswitch_1
    iget-object v1, p0, Lc8/FIb;->writer:Lc8/JJb;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Lc8/JJb;->write(I)V

    .line 86
    :goto_0
    :pswitch_2
    return-void

    .line 81
    :pswitch_3
    iget-object v1, p0, Lc8/FIb;->writer:Lc8/JJb;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Lc8/JJb;->write(I)V

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private endStructure()V
    .locals 2

    .prologue
    .line 98
    iget-object v1, p0, Lc8/FIb;->context:Lc8/EIb;

    iget-object v1, v1, Lc8/EIb;->parent:Lc8/EIb;

    iput-object v1, p0, Lc8/FIb;->context:Lc8/EIb;

    .line 100
    iget-object v1, p0, Lc8/FIb;->context:Lc8/EIb;

    if-nez v1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    const/4 v0, -0x1

    .line 105
    .local v0, "newState":I
    iget-object v1, p0, Lc8/FIb;->context:Lc8/EIb;

    iget v1, v1, Lc8/EIb;->state:I

    packed-switch v1, :pswitch_data_0

    .line 120
    :goto_1
    :pswitch_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 121
    iget-object v1, p0, Lc8/FIb;->context:Lc8/EIb;

    iput v0, v1, Lc8/EIb;->state:I

    goto :goto_0

    .line 107
    :pswitch_1
    const/16 v0, 0x3eb

    .line 108
    goto :goto_1

    .line 110
    :pswitch_2
    const/16 v0, 0x3ed

    .line 111
    goto :goto_1

    .line 115
    :pswitch_3
    const/16 v0, 0x3ea

    goto :goto_1

    .line 105
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lc8/FIb;->writer:Lc8/JJb;

    invoke-virtual {v0}, Lc8/JJb;->close()V

    .line 183
    return-void
.end method

.method public config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
    .locals 1
    .param p1, "feature"    # Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .param p2, "state"    # Z

    .prologue
    .line 27
    iget-object v0, p0, Lc8/FIb;->writer:Lc8/JJb;

    invoke-virtual {v0, p1, p2}, Lc8/JJb;->config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V

    .line 28
    return-void
.end method

.method public endArray()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lc8/FIb;->writer:Lc8/JJb;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lc8/JJb;->write(I)V

    .line 94
    invoke-direct {p0}, Lc8/FIb;->endStructure()V

    .line 95
    return-void
.end method

.method public endObject()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lc8/FIb;->writer:Lc8/JJb;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Lc8/JJb;->write(I)V

    .line 40
    invoke-direct {p0}, Lc8/FIb;->endStructure()V

    .line 41
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lc8/FIb;->writer:Lc8/JJb;

    invoke-virtual {v0}, Lc8/JJb;->flush()V

    .line 179
    return-void
.end method

.method public startArray()V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lc8/FIb;->context:Lc8/EIb;

    if-eqz v0, :cond_0

    .line 67
    invoke-direct {p0}, Lc8/FIb;->beginStructure()V

    .line 70
    :cond_0
    new-instance v0, Lc8/EIb;

    iget-object v1, p0, Lc8/FIb;->context:Lc8/EIb;

    const/16 v2, 0x3ec

    invoke-direct {v0, v1, v2}, Lc8/EIb;-><init>(Lc8/EIb;I)V

    iput-object v0, p0, Lc8/FIb;->context:Lc8/EIb;

    .line 71
    iget-object v0, p0, Lc8/FIb;->writer:Lc8/JJb;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Lc8/JJb;->write(I)V

    .line 72
    return-void
.end method

.method public startObject()V
    .locals 3

    .prologue
    .line 31
    iget-object v0, p0, Lc8/FIb;->context:Lc8/EIb;

    if-eqz v0, :cond_0

    .line 32
    invoke-direct {p0}, Lc8/FIb;->beginStructure()V

    .line 34
    :cond_0
    new-instance v0, Lc8/EIb;

    iget-object v1, p0, Lc8/FIb;->context:Lc8/EIb;

    const/16 v2, 0x3e9

    invoke-direct {v0, v1, v2}, Lc8/EIb;-><init>(Lc8/EIb;I)V

    iput-object v0, p0, Lc8/FIb;->context:Lc8/EIb;

    .line 35
    iget-object v0, p0, Lc8/FIb;->writer:Lc8/JJb;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Lc8/JJb;->write(I)V

    .line 36
    return-void
.end method

.method public writeKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lc8/FIb;->writeObject(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 60
    invoke-direct {p0}, Lc8/FIb;->beforeWrite()V

    .line 61
    iget-object v0, p0, Lc8/FIb;->serializer:Lc8/wJb;

    invoke-virtual {v0, p1}, Lc8/wJb;->write(Ljava/lang/Object;)V

    .line 62
    invoke-direct {p0}, Lc8/FIb;->afterWriter()V

    .line 63
    return-void
.end method

.method public writeObject(Ljava/lang/String;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0}, Lc8/FIb;->beforeWrite()V

    .line 54
    iget-object v0, p0, Lc8/FIb;->serializer:Lc8/wJb;

    invoke-virtual {v0, p1}, Lc8/wJb;->write(Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Lc8/FIb;->afterWriter()V

    .line 57
    return-void
.end method

.method public writeValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lc8/FIb;->writeObject(Ljava/lang/Object;)V

    .line 49
    return-void
.end method
