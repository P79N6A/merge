.class public final Lc8/PDd;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/RDd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lc8/RDd;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:[Ljava/io/InputStream;

.field private final e:[J


# direct methods
.method private constructor <init>(Lc8/RDd;Ljava/lang/String;J[Ljava/io/InputStream;[J)V
    .locals 1

    iput-object p1, p0, Lc8/PDd;->a:Lc8/RDd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lc8/PDd;->b:Ljava/lang/String;

    iput-wide p3, p0, Lc8/PDd;->c:J

    iput-object p5, p0, Lc8/PDd;->d:[Ljava/io/InputStream;

    iput-object p6, p0, Lc8/PDd;->e:[J

    return-void
.end method

.method synthetic constructor <init>(Lc8/RDd;Ljava/lang/String;J[Ljava/io/InputStream;[JB)V
    .locals 1

    invoke-direct/range {p0 .. p6}, Lc8/PDd;-><init>(Lc8/RDd;Ljava/lang/String;J[Ljava/io/InputStream;[J)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lc8/PDd;->d:[Ljava/io/InputStream;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final close()V
    .locals 4

    iget-object v1, p0, Lc8/PDd;->d:[Ljava/io/InputStream;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-static {v3}, Lc8/VDd;->a(Ljava/io/Closeable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
