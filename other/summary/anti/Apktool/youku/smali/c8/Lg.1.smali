.class public Lc8/Lg;
.super Lc8/Rg;
.source "SceneKitKat.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation build Lc8/N;
    value = 0x13
.end annotation


# static fields
.field private static sEnterAction:Ljava/lang/reflect/Field;

.field private static sSetCurrentScene:Ljava/lang/reflect/Method;


# instance fields
.field private mLayout:Landroid/view/View;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lc8/Rg;-><init>()V

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

.method private invokeEnterAction()V
    .locals 4

    .prologue
    .line 68
    sget-object v2, Lc8/Lg;->sEnterAction:Ljava/lang/reflect/Field;

    if-nez v2, :cond_0

    .line 70
    :try_start_0
    const-class v2, Landroid/transition/Scene;

    const-string/jumbo v3, "mEnterAction"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 71
    sput-object v2, Lc8/Lg;->sEnterAction:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_0
    :try_start_1
    sget-object v2, Lc8/Lg;->sEnterAction:Ljava/lang/reflect/Field;

    iget-object v3, p0, Lc8/Lg;->mScene:Landroid/transition/Scene;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 78
    .local v1, "enterAction":Ljava/lang/Runnable;
    if-eqz v1, :cond_1

    .line 79
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    :cond_1
    return-void

    .line 72
    .end local v1    # "enterAction":Ljava/lang/Runnable;
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 81
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private updateCurrentScene(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 88
    sget-object v1, Lc8/Lg;->sSetCurrentScene:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 90
    :try_start_0
    const-class v1, Landroid/transition/Scene;

    const-string/jumbo v2, "setCurrentScene"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/View;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/transition/Scene;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 92
    sput-object v1, Lc8/Lg;->sSetCurrentScene:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_0
    :try_start_1
    sget-object v1, Lc8/Lg;->sSetCurrentScene:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lc8/Lg;->mScene:Landroid/transition/Scene;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lc8/Lg;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    .line 101
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 99
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 99
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_2
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 55
    iget-object v1, p0, Lc8/Lg;->mLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {p0}, Lc8/Lg;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object v0

    .line 58
    .local v0, "root":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 59
    iget-object v1, p0, Lc8/Lg;->mLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 60
    invoke-direct {p0}, Lc8/Lg;->invokeEnterAction()V

    .line 61
    invoke-direct {p0, v0}, Lc8/Lg;->updateCurrentScene(Landroid/view/View;)V

    .line 65
    .end local v0    # "root":Landroid/view/ViewGroup;
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v1, p0, Lc8/Lg;->mScene:Landroid/transition/Scene;

    invoke-virtual {v1}, Landroid/transition/Scene;->enter()V

    goto :goto_0
.end method

.method public init(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 40
    new-instance v0, Landroid/transition/Scene;

    invoke-direct {v0, p1}, Landroid/transition/Scene;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lc8/Lg;->mScene:Landroid/transition/Scene;

    .line 41
    return-void
.end method

.method public init(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "layout"    # Landroid/view/View;

    .prologue
    .line 45
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 46
    new-instance v0, Landroid/transition/Scene;

    check-cast p2, Landroid/view/ViewGroup;

    .end local p2    # "layout":Landroid/view/View;
    invoke-direct {v0, p1, p2}, Landroid/transition/Scene;-><init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lc8/Lg;->mScene:Landroid/transition/Scene;

    .line 51
    :goto_0
    return-void

    .line 48
    .restart local p2    # "layout":Landroid/view/View;
    :cond_0
    new-instance v0, Landroid/transition/Scene;

    invoke-direct {v0, p1}, Landroid/transition/Scene;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lc8/Lg;->mScene:Landroid/transition/Scene;

    .line 49
    iput-object p2, p0, Lc8/Lg;->mLayout:Landroid/view/View;

    goto :goto_0
.end method
