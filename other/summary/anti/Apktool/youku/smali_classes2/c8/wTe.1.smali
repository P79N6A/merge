.class public Lc8/wTe;
.super Ljava/lang/Object;
.source "Platform.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/xTe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JettyNegoProvider"
.end annotation


# instance fields
.field private final protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selected:Ljava/lang/String;

.field private unsupported:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 420
    .local p1, "protocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    iput-object p1, p0, Lc8/wTe;->protocols:Ljava/util/List;

    .line 422
    return-void
.end method

.method private static _1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/ali/mobisecenhance/Invocation;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/ali/mobisecenhance/Invocation;-><init>(I)V

    move-object v2, p0

    invoke-virtual {v0, v2}, Lcom/ali/mobisecenhance/Invocation;->initThis(Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    const/4 v1, 0x1

    move-object v2, p2

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->before_Method_invoke(Lcom/ali/mobisecenhance/Invocation;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Object;

    move-object p1, v2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object p2, v2

    :cond_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual/range {p0 .. p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :cond_1
    :goto_0
    invoke-static {v0, v1, v3}, Lcom/ali/mobisecenhance/ReflectMap;->after_Method_invoke(Lcom/ali/mobisecenhance/Invocation;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method static synthetic access$000(Lc8/wTe;)Z
    .locals 1
    .param p0, "x0"    # Lc8/wTe;

    .prologue
    .line 412
    iget-boolean v0, p0, Lc8/wTe;->unsupported:Z

    return v0
.end method

.method static synthetic access$100(Lc8/wTe;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/wTe;

    .prologue
    .line 412
    iget-object v0, p0, Lc8/wTe;->selected:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 425
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 426
    .local v1, "methodName":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    .line 427
    .local v3, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p3, :cond_0

    .line 428
    sget-object p3, Lc8/ATe;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 430
    :cond_0
    const-string/jumbo v5, "supports"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v5, v3, :cond_1

    .line 431
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 452
    :goto_0
    return-object v5

    .line 432
    :cond_1
    const-string/jumbo v5, "unsupported"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v5, v3, :cond_2

    .line 433
    iput-boolean v8, p0, Lc8/wTe;->unsupported:Z

    move-object v5, v6

    .line 434
    goto :goto_0

    .line 435
    :cond_2
    const-string/jumbo v5, "protocols"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    array-length v5, p3

    if-nez v5, :cond_3

    .line 436
    iget-object v5, p0, Lc8/wTe;->protocols:Ljava/util/List;

    goto :goto_0

    .line 437
    :cond_3
    const-string/jumbo v5, "selectProtocol"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "select"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_4
    const-class v5, Ljava/lang/String;

    if-ne v5, v3, :cond_7

    array-length v5, p3

    if-ne v5, v8, :cond_7

    aget-object v5, p3, v7

    instance-of v5, v5, Ljava/util/List;

    if-eqz v5, :cond_7

    .line 439
    aget-object v2, p3, v7

    check-cast v2, Ljava/util/List;

    .line 441
    .local v2, "peerProtocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_1
    if-ge v0, v4, :cond_6

    .line 442
    iget-object v5, p0, Lc8/wTe;->protocols:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 443
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lc8/wTe;->selected:Ljava/lang/String;

    goto :goto_0

    .line 441
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 446
    :cond_6
    iget-object v5, p0, Lc8/wTe;->protocols:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lc8/wTe;->selected:Ljava/lang/String;

    goto :goto_0

    .line 447
    .end local v0    # "i":I
    .end local v2    # "peerProtocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "size":I
    :cond_7
    const-string/jumbo v5, "protocolSelected"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string/jumbo v5, "selected"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    array-length v5, p3

    if-ne v5, v8, :cond_9

    .line 449
    aget-object v5, p3, v7

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lc8/wTe;->selected:Ljava/lang/String;

    move-object v5, v6

    .line 450
    goto/16 :goto_0

    .line 452
    :cond_9
    invoke-static {p2, p0, p3}, Lc8/wTe;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0
.end method
