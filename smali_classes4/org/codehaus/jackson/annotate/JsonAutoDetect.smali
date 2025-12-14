.class public interface abstract annotation Lorg/codehaus/jackson/annotate/JsonAutoDetect;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/codehaus/jackson/annotate/JsonAutoDetect;
        creatorVisibility = .enum LHd/a;->DEFAULT:LHd/a;
        fieldVisibility = .enum LHd/a;->DEFAULT:LHd/a;
        getterVisibility = .enum LHd/a;->DEFAULT:LHd/a;
        isGetterVisibility = .enum LHd/a;->DEFAULT:LHd/a;
        setterVisibility = .enum LHd/a;->DEFAULT:LHd/a;
        value = {
            .enum LHd/b;->ALL:LHd/b;
        }
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/annotate/JacksonAnnotation;
.end annotation
