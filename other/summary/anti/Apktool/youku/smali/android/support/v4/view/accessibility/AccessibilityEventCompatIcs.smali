.class public Landroid/support/v4/view/accessibility/AccessibilityEventCompatIcs;
.super Ljava/lang/Object;
.source "AccessibilityEventCompatIcs.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Lc8/N;
    value = 0xe
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendRecord(Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/Object;)V
    .locals 0
    .param p0, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 37
    check-cast p1, Landroid/view/accessibility/AccessibilityRecord;

    .end local p1    # "record":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 38
    return-void
.end method

.method public static getRecord(Landroid/view/accessibility/AccessibilityEvent;I)Ljava/lang/Object;
    .locals 1
    .param p0, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p1, "index"    # I

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityEvent;->getRecord(I)Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v0

    return-object v0
.end method

.method public static getRecordCount(Landroid/view/accessibility/AccessibilityEvent;)I
    .locals 1
    .param p0, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 33
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getRecordCount()I

    move-result v0

    return v0
.end method

.method public static setScrollable(Landroid/view/accessibility/AccessibilityEvent;Z)V
    .locals 0
    .param p0, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p1, "scrollable"    # Z

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 46
    return-void
.end method
