.class public final Lc8/uEd;
.super Ljava/lang/Object;
.source "Const.java"


# static fields
.field public static a:Z

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    sput-boolean v0, Lc8/uEd;->a:Z

    sput-object v1, Lc8/uEd;->b:Ljava/lang/String;

    sput-object v1, Lc8/uEd;->c:Ljava/lang/String;

    const-wide/16 v0, 0x1f4

    sput-wide v0, Lc8/uEd;->d:J

    return-void
.end method
