.class public Lc8/Bfb;
.super Landroid/graphics/Paint;
.source "TextLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Dfb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Dfb;


# direct methods
.method constructor <init>(Lc8/Dfb;I)V
    .locals 1
    .param p1, "this$0"    # Lc8/Dfb;
    .param p2, "x0"    # I

    .prologue
    .line 34
    iput-object p1, p0, Lc8/Bfb;->this$0:Lc8/Dfb;

    invoke-direct {p0, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 35
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Lc8/Bfb;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 36
    return-void
.end method
