.class public Lc8/Hm;
.super Ljava/lang/Object;
.source "AccessibilityManagerCompatKitKat.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation build Lc8/N;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Fm;,
        Lc8/Gm;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method public static addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "manager"    # Landroid/view/accessibility/AccessibilityManager;
    .param p1, "listener"    # Ljava/lang/Object;

    .prologue
    .line 83
    check-cast p1, Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .end local p1    # "listener":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    move-result v0

    return v0
.end method

.method public static newTouchExplorationStateChangeListener(Lc8/Fm;)Ljava/lang/Object;
    .locals 1
    .param p0, "bridge"    # Lc8/Fm;

    .prologue
    .line 73
    new-instance v0, Lc8/Em;

    invoke-direct {v0, p0}, Lc8/Em;-><init>(Lc8/Fm;)V

    return-object v0
.end method

.method public static removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "manager"    # Landroid/view/accessibility/AccessibilityManager;
    .param p1, "listener"    # Ljava/lang/Object;

    .prologue
    .line 89
    check-cast p1, Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .end local p1    # "listener":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    move-result v0

    return v0
.end method
