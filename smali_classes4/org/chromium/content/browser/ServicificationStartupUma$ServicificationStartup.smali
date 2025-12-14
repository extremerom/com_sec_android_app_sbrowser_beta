.class public interface abstract annotation Lorg/chromium/content/browser/ServicificationStartupUma$ServicificationStartup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/ServicificationStartupUma;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ServicificationStartup"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final CHROME_COLD:I = 0x0

.field public static final CHROME_HALF_WARM:I = 0x1

.field public static final MINIMAL_BROWSER_COLD:I = 0x2

.field public static final MINIMAL_BROWSER_WARM:I = 0x3

.field public static final NUM_ENTRIES:I = 0x4
