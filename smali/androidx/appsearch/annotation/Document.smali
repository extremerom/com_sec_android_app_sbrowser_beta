.class public interface abstract annotation Landroidx/appsearch/annotation/Document;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Landroidx/appsearch/annotation/Document;
        name = ""
        parent = {}
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appsearch/annotation/Document$BuilderProducer;,
        Landroidx/appsearch/annotation/Document$EmbeddingProperty;,
        Landroidx/appsearch/annotation/Document$BytesProperty;,
        Landroidx/appsearch/annotation/Document$BooleanProperty;,
        Landroidx/appsearch/annotation/Document$DoubleProperty;,
        Landroidx/appsearch/annotation/Document$LongProperty;,
        Landroidx/appsearch/annotation/Document$DocumentProperty;,
        Landroidx/appsearch/annotation/Document$StringProperty;,
        Landroidx/appsearch/annotation/Document$Score;,
        Landroidx/appsearch/annotation/Document$TtlMillis;,
        Landroidx/appsearch/annotation/Document$CreationTimestampMillis;,
        Landroidx/appsearch/annotation/Document$Namespace;,
        Landroidx/appsearch/annotation/Document$Id;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation
