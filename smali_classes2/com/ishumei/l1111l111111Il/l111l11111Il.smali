.class public interface abstract annotation Lcom/ishumei/l1111l111111Il/l111l11111Il;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/ishumei/l1111l111111Il/l111l11111Il;
        l111l11111I1l = true
        l111l11111lIl = false
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
.method public abstract l1111l111111Il()Ljava/lang/String;
.end method

.method public abstract l111l11111I1l()Z
.end method

.method public abstract l111l11111lIl()Z
.end method
