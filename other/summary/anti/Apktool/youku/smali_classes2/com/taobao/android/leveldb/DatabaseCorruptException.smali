.class public Lcom/taobao/android/leveldb/DatabaseCorruptException;
.super Lcom/taobao/android/leveldb/LevelDBException;
.source "DatabaseCorruptException.java"


# static fields
.field private static final serialVersionUID:J = -0x1d4944d4a69d60b9L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/taobao/android/leveldb/LevelDBException;-><init>()V

    .line 7
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/taobao/android/leveldb/LevelDBException;-><init>(Ljava/lang/String;)V

    .line 11
    return-void
.end method
