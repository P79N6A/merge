.class public final Lc8/ADd;
.super Ljava/lang/Object;
.source "DexFileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/BDd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public static a(Lc8/eDd;Ljava/lang/String;)Lc8/IDd;
    .locals 2

    invoke-static {p1}, Lc8/IDd;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lc8/IDd;

    invoke-virtual {p0, v0, v1}, Lc8/eDd;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/IDd;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lc8/eDd;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/eDd;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lc8/IDd;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2}, Lc8/IDd;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lc8/IDd;

    invoke-virtual {p0, v0, v1}, Lc8/eDd;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
