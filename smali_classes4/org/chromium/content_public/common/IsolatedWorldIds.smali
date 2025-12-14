.class public interface abstract annotation Lorg/chromium/content_public/common/IsolatedWorldIds;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field public static final ISOLATED_WORLD_ID_CONTENT_END:I = 0x1

.field public static final ISOLATED_WORLD_ID_GLOBAL:I = 0x0

.field public static final ISOLATED_WORLD_ID_MAX:I = 0xb
