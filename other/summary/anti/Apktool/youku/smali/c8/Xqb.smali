.class public Lc8/Xqb;
.super Ljava/lang/Object;
.source "ActionSheet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/erb;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/erb;


# direct methods
.method constructor <init>(Lc8/erb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/erb;

    .prologue
    .line 55
    iput-object p1, p0, Lc8/Xqb;->this$0:Lc8/erb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 58
    iget-object v0, p0, Lc8/Xqb;->this$0:Lc8/erb;

    invoke-static {v0}, Lc8/erb;->access$000(Lc8/erb;)V

    .line 59
    return-void
.end method
