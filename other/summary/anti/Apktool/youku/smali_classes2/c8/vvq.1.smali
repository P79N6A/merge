.class public final Lc8/vvq;
.super Ljava/lang/Object;
.source "OperatorToMultimap.java"

# interfaces
.implements Lc8/Inq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/xvq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultMultimapCollectionFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Inq",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    .local p0, "this":Lc8/vvq;, "Lrx/internal/operators/OperatorToMultimap$DefaultMultimapCollectionFactory<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 62
    .local p0, "this":Lc8/vvq;, "Lrx/internal/operators/OperatorToMultimap$DefaultMultimapCollectionFactory<TK;TV;>;"
    invoke-virtual {p0, p1}, Lc8/vvq;->call(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lc8/vvq;, "Lrx/internal/operators/OperatorToMultimap$DefaultMultimapCollectionFactory<TK;TV;>;"
    .local p1, "t1":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
