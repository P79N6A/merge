.class public Lc8/Hkd;
.super Ljava/util/AbstractSet;
.source "LinkedTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/LinkedTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gson/internal/LinkedTreeMap;


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/LinkedTreeMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/gson/internal/LinkedTreeMap;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 560
    .local p0, "this":Lc8/Hkd;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>.EntrySet;"
    iput-object p1, p0, Lc8/Hkd;->this$0:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 591
    .local p0, "this":Lc8/Hkd;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lc8/Hkd;->this$0:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lcom/google/gson/internal/LinkedTreeMap;->clear()V

    .line 592
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 574
    .local p0, "this":Lc8/Hkd;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>.EntrySet;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Hkd;->this$0:Lcom/google/gson/internal/LinkedTreeMap;

    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lcom/google/gson/internal/LinkedTreeMap;->findByEntry(Ljava/util/Map$Entry;)Lc8/Lkd;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 566
    .local p0, "this":Lc8/Hkd;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>.EntrySet;"
    new-instance v0, Lc8/Gkd;

    invoke-direct {v0, p0}, Lc8/Gkd;-><init>(Lc8/Hkd;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lc8/Hkd;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>.EntrySet;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 578
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_1

    .line 587
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .line 582
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    iget-object v3, p0, Lc8/Hkd;->this$0:Lcom/google/gson/internal/LinkedTreeMap;

    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {v3, p1}, Lcom/google/gson/internal/LinkedTreeMap;->findByEntry(Ljava/util/Map$Entry;)Lc8/Lkd;

    move-result-object v0

    .line 583
    .local v0, "node":Lc8/Lkd;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 586
    iget-object v1, p0, Lc8/Hkd;->this$0:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/internal/LinkedTreeMap;->removeInternal(Lc8/Lkd;Z)V

    move v1, v2

    .line 587
    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 562
    .local p0, "this":Lc8/Hkd;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lc8/Hkd;->this$0:Lcom/google/gson/internal/LinkedTreeMap;

    iget v0, v0, Lcom/google/gson/internal/LinkedTreeMap;->size:I

    return v0
.end method
