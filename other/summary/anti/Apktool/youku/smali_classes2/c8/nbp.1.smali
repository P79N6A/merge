.class public Lc8/nbp;
.super Ljava/lang/Object;
.source "YoukuDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Cbp;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Cbp;


# direct methods
.method constructor <init>(Lc8/Cbp;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Cbp;

    .prologue
    .line 555
    iput-object p1, p0, Lc8/nbp;->this$0:Lc8/Cbp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 559
    iget-object v0, p0, Lc8/nbp;->this$0:Lc8/Cbp;

    invoke-static {v0}, Lc8/Cbp;->access$600(Lc8/Cbp;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 560
    iget-object v0, p0, Lc8/nbp;->this$0:Lc8/Cbp;

    invoke-virtual {v0}, Lc8/Cbp;->dismiss()V

    .line 565
    :goto_0
    return-void

    .line 563
    :cond_0
    iget-object v0, p0, Lc8/nbp;->this$0:Lc8/Cbp;

    invoke-static {v0}, Lc8/Cbp;->access$600(Lc8/Cbp;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 564
    iget-object v0, p0, Lc8/nbp;->this$0:Lc8/Cbp;

    invoke-virtual {v0}, Lc8/Cbp;->dismiss()V

    goto :goto_0
.end method
