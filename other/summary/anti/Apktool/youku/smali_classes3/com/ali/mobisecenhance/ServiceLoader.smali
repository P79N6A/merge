.class public final Lcom/ali/mobisecenhance/ServiceLoader;
.super Ljava/lang/Object;
.source "ServiceLoader.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ali/mobisecenhance/ServiceLoader$ServiceIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TS;>;"
    }
.end annotation


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;

.field private final service:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TS;>;"
        }
    .end annotation
.end field

.field private final services:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gez v0, :cond_0

    const-class v0, La/does/not/Exists2;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    .locals 2
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TS;>;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lcom/ali/mobisecenhance/ServiceLoader;, "Lcom/ali/mobisecenhance/ServiceLoader<TS;>;"
    .local p1, "service":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    if-nez p1, :cond_0

    .line 84
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "service == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    iput-object p1, p0, Lcom/ali/mobisecenhance/ServiceLoader;->service:Ljava/lang/Class;

    .line 87
    iput-object p2, p0, Lcom/ali/mobisecenhance/ServiceLoader;->classLoader:Ljava/lang/ClassLoader;

    .line 88
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ali/mobisecenhance/ServiceLoader;->services:Ljava/util/Set;

    .line 89
    invoke-virtual {p0}, Lcom/ali/mobisecenhance/ServiceLoader;->reload()V

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/ali/mobisecenhance/ServiceLoader;)Ljava/lang/ClassLoader;
    .locals 1
    .param p0, "x0"    # Lcom/ali/mobisecenhance/ServiceLoader;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/ali/mobisecenhance/ServiceLoader;->classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ali/mobisecenhance/ServiceLoader;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lcom/ali/mobisecenhance/ServiceLoader;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/ali/mobisecenhance/ServiceLoader;->service:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ali/mobisecenhance/ServiceLoader;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/ali/mobisecenhance/ServiceLoader;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/ali/mobisecenhance/ServiceLoader;->services:Ljava/util/Set;

    return-object v0
.end method

.method private internalLoad()V
    .locals 4

    .prologue
    .line 129
    .local p0, "this":Lcom/ali/mobisecenhance/ServiceLoader;, "Lcom/ali/mobisecenhance/ServiceLoader<TS;>;"
    iget-object v2, p0, Lcom/ali/mobisecenhance/ServiceLoader;->services:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 131
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "META-INF/services/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ali/mobisecenhance/ServiceLoader;->service:Ljava/lang/Class;

    invoke-static {v3}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/ali/mobisecenhance/ServiceLoader;->services:Ljava/util/Set;

    iget-object v3, p0, Lcom/ali/mobisecenhance/ServiceLoader;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v3, v1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v1    # "name":Ljava/lang/String;
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public static load(Ljava/lang/Class;)Lcom/ali/mobisecenhance/ServiceLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;)",
            "Lcom/ali/mobisecenhance/ServiceLoader",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, "service":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ali/mobisecenhance/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Lcom/ali/mobisecenhance/ServiceLoader;

    move-result-object v0

    return-object v0
.end method

.method public static load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Lcom/ali/mobisecenhance/ServiceLoader;
    .locals 1
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Lcom/ali/mobisecenhance/ServiceLoader",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "service":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    if-nez p1, :cond_0

    .line 123
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 125
    :cond_0
    new-instance v0, Lcom/ali/mobisecenhance/ServiceLoader;

    invoke-direct {v0, p0, p1}, Lcom/ali/mobisecenhance/ServiceLoader;-><init>(Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public static loadFromSystemProperty(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;)TS;"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "service":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "className":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 174
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 175
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 177
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 178
    .end local v1    # "className":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 179
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3, v2}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static loadInstalled(Ljava/lang/Class;)Lcom/ali/mobisecenhance/ServiceLoader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;)",
            "Lcom/ali/mobisecenhance/ServiceLoader",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "service":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 156
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_0

    .line 157
    :goto_0
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0

    .line 161
    :cond_0
    invoke-static {p0, v0}, Lcom/ali/mobisecenhance/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Lcom/ali/mobisecenhance/ServiceLoader;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lcom/ali/mobisecenhance/ServiceLoader;, "Lcom/ali/mobisecenhance/ServiceLoader<TS;>;"
    new-instance v0, Lcom/ali/mobisecenhance/ServiceLoader$ServiceIterator;

    invoke-direct {v0, p0, p0}, Lcom/ali/mobisecenhance/ServiceLoader$ServiceIterator;-><init>(Lcom/ali/mobisecenhance/ServiceLoader;Lcom/ali/mobisecenhance/ServiceLoader;)V

    return-object v0
.end method

.method public reload()V
    .locals 0

    .prologue
    .line 96
    .local p0, "this":Lcom/ali/mobisecenhance/ServiceLoader;, "Lcom/ali/mobisecenhance/ServiceLoader<TS;>;"
    invoke-direct {p0}, Lcom/ali/mobisecenhance/ServiceLoader;->internalLoad()V

    .line 97
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 185
    .local p0, "this":Lcom/ali/mobisecenhance/ServiceLoader;, "Lcom/ali/mobisecenhance/ServiceLoader<TS;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceLoader for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/mobisecenhance/ServiceLoader;->service:Ljava/lang/Class;

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
