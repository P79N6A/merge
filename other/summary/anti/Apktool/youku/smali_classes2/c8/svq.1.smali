.class public final Lc8/svq;
.super Ljava/lang/Object;
.source "OperatorToMap.java"

# interfaces
.implements Lc8/Hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/tvq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultToMapFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Hnq",
        "<",
        "Ljava/util/Map",
        "<TK;TV;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    .local p0, "this":Lc8/svq;, "Lrx/internal/operators/OperatorToMap$DefaultToMapFactory<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lc8/svq;, "Lrx/internal/operators/OperatorToMap$DefaultToMapFactory<TK;TV;>;"
    invoke-virtual {p0}, Lc8/svq;->call()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lc8/svq;, "Lrx/internal/operators/OperatorToMap$DefaultToMapFactory<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method
