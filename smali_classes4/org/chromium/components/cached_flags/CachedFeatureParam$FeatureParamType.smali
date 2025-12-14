.class public interface abstract annotation Lorg/chromium/components/cached_flags/CachedFeatureParam$FeatureParamType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/cached_flags/CachedFeatureParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "FeatureParamType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final ALL:I = 0x4

.field public static final BOOLEAN:I = 0x1

.field public static final DOUBLE:I = 0x3

.field public static final INT:I = 0x2

.field public static final STRING:I
