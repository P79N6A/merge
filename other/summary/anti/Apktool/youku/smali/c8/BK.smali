.class public interface abstract annotation Lc8/BK;
.super Ljava/lang/Object;
.source "Measure.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lc8/BK;
        constantValue = 0.0
        max = 1.7976931348623157E308
        min = 0.0
        name = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract constantValue()D
.end method

.method public abstract max()D
.end method

.method public abstract min()D
.end method

.method public abstract name()Ljava/lang/String;
.end method
