.class public interface abstract annotation Lorg/chromium/content/browser/AttributionOsLevelManager$OperationType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/AttributionOsLevelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "OperationType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final DELETE_REGISTRATIONS:I = 0x5

.field public static final GET_MEASUREMENT_API_STATUS:I = 0x4

.field public static final REGISTER_SOURCE:I = 0x0

.field public static final REGISTER_TRIGGER:I = 0x2

.field public static final REGISTER_WEB_SOURCE:I = 0x1

.field public static final REGISTER_WEB_TRIGGER:I = 0x3
