.class public interface abstract annotation Lorg/chromium/content_public/browser/bluetooth/BluetoothChooserEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE_USE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final CANCELLED:I = 0x1

.field public static final DENIED_PERMISSION:I = 0x0

.field public static final RESCAN:I = 0x3

.field public static final SELECTED:I = 0x2

.field public static final SHOW_ADAPTER_OFF_HELP:I = 0x5

.field public static final SHOW_NEED_LOCATION_HELP:I = 0x6

.field public static final SHOW_OVERVIEW_HELP:I = 0x4
