.class public final Lc8/kMc;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/kMc;->a:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/kMc;->b:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/kMc;->c:Ljava/lang/String;

    iput-object p1, p0, Lc8/kMc;->a:Ljava/lang/String;

    iput-object p2, p0, Lc8/kMc;->b:Ljava/lang/String;

    iput-object p3, p0, Lc8/kMc;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc8/kMc;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc8/kMc;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc8/kMc;->c:Ljava/lang/String;

    return-object v0
.end method
