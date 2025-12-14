.class public Lcom/sec/sbrowser/spl/wrapper/MajoSettings$Secure;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/sbrowser/spl/wrapper/MajoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Secure"
.end annotation


# static fields
.field public static final ACCESSIBILITY_HIGH_TEXT_CONTRAST_ENABLED:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final ENHANCED_COMFORT_FONT_VALUE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v1, "ACCESSIBILITY_HIGH_TEXT_CONTRAST_ENABLED"

    const-class v2, Landroid/provider/Settings$Secure;

    invoke-direct {v0, v2, v1}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSettings$Secure;->ACCESSIBILITY_HIGH_TEXT_CONTRAST_ENABLED:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v1, "ENHANCED_COMFORT_FONT_VALUE"

    invoke-direct {v0, v2, v1}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSettings$Secure;->ENHANCED_COMFORT_FONT_VALUE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    return-void
.end method
