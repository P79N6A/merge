.class public Landroid/support/v8/renderscript/ScriptGroup$IO;
.super Ljava/lang/Object;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v8/renderscript/ScriptGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IO"
.end annotation


# instance fields
.field mAllocation:Landroid/support/v8/renderscript/Allocation;

.field mKID:Landroid/support/v8/renderscript/Script$KernelID;


# direct methods
.method constructor <init>(Landroid/support/v8/renderscript/Script$KernelID;)V
    .locals 0
    .param p1, "s"    # Landroid/support/v8/renderscript/Script$KernelID;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Landroid/support/v8/renderscript/ScriptGroup$IO;->mKID:Landroid/support/v8/renderscript/Script$KernelID;

    .line 59
    return-void
.end method
