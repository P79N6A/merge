.class public Lc8/MHb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lc8/LHb;


# direct methods
.method constructor <init>(Lc8/LHb;)V
    .locals 0

    iput-object p1, p0, Lc8/MHb;->a:Lc8/LHb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lc8/MHb;->a:Lc8/LHb;

    invoke-virtual {v0}, Lc8/LHb;->finish()V

    return-void
.end method
