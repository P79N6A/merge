.class public final Lc8/fIb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alibaba/baichuan/android/trade/callback/AlibcFailureCallback;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/baichuan/android/trade/callback/AlibcFailureCallback;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc8/fIb;->a:Lcom/alibaba/baichuan/android/trade/callback/AlibcFailureCallback;

    iput p2, p0, Lc8/fIb;->b:I

    iput-object p3, p0, Lc8/fIb;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lc8/fIb;->a:Lcom/alibaba/baichuan/android/trade/callback/AlibcFailureCallback;

    iget v1, p0, Lc8/fIb;->b:I

    iget-object v2, p0, Lc8/fIb;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/baichuan/android/trade/callback/AlibcFailureCallback;->onFailure(ILjava/lang/String;)V

    return-void
.end method
