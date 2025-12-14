.class public Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo;
.super Lcom/sec/sbrowser/spl/util/ReflectBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;
    }
.end annotation


# static fields
.field public static final BLUR_MODE_CANVAS:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final BLUR_MODE_WINDOW:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final BLUR_MODE_WINDOW_CAPTURED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final BLUR_UI_HIGH_ULTRA_THICK_DARK:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final BLUR_UI_HIGH_ULTRA_THICK_LIGHT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final BLUR_UI_LOW_REGULAR_DARK:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final BLUR_UI_LOW_REGULAR_LIGHT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final BLUR_UI_LOW_ULTRA_THICK_DARK:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final BLUR_UI_LOW_ULTRA_THICK_LIGHT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final BLUR_UI_MEDIUM_THICK_DARK:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final BLUR_UI_MEDIUM_THICK_LIGHT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final BLUR_UI_MEDIUM_ULTRA_THICK_DARK:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final BLUR_UI_MEDIUM_ULTRA_THICK_LIGHT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final BLUR_UI_MEDIUM_ULTRA_THIN_DARK:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final BLUR_UI_MEDIUM_ULTRA_THIN_LIGHT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final COLOR_CURVE_TYPE_DIM_BACKGROUND_DARK:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final COLOR_CURVE_TYPE_DIM_BACKGROUND_LIGHT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final COLOR_CURVE_TYPE_SPATIAL_BACKGROUND_DARK:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final COLOR_CURVE_TYPE_SPATIAL_BACKGROUND_LIGHT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final COLOR_CURVE_TYPE_ULTRA_BACKGROUND_DARK:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final COLOR_CURVE_TYPE_ULTRA_BACKGROUND_LIGHT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field private static final sSemBlurInfoClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "android.view.SemBlurInfo"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo;->sSemBlurInfoClass:Ljava/lang/Class;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "BLUR_MODE_WINDOW"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo;->BLUR_MODE_WINDOW:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "BLUR_MODE_WINDOW_CAPTURED"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo;->BLUR_MODE_WINDOW_CAPTURED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "BLUR_MODE_CANVAS"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo;->BLUR_MODE_CANVAS:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "COLOR_CURVE_TYPE_SPATIAL_BACKGROUND_LIGHT"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo;->COLOR_CURVE_TYPE_SPATIAL_BACKGROUND_LIGHT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "COLOR_CURVE_TYPE_DIM_BACKGROUND_LIGHT"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo;->COLOR_CURVE_TYPE_DIM_BACKGROUND_LIGHT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "COLOR_CURVE_TYPE_ULTRA_BACKGROUND_LIGHT"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo;->COLOR_CURVE_TYPE_ULTRA_BACKGROUND_LIGHT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "COLOR_CURVE_TYPE_SPATIAL_BACKGROUND_DARK"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo;->COLOR_CURVE_TYPE_SPATIAL_BACKGROUND_DARK:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "COLOR_CURVE_TYPE_DIM_BACKGROUND_DARK"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo;->COLOR_CURVE_TYPE_DIM_BACKGROUND_DARK:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "COLOR_CURVE_TYPE_ULTRA_BACKGROUND_DARK"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo;->COLOR_CURVE_TYPE_ULTRA_BACKGROUND_DARK:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "BLUR_UI_LOW_REGULAR_LIGHT"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo;->BLUR_UI_LOW_REGULAR_LIGHT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "BLUR_UI_LOW_REGULAR_DARK"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo;->BLUR_UI_LOW_REGULAR_DARK:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "BLUR_UI_LOW_ULTRA_THICK_LIGHT"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo;->BLUR_UI_LOW_ULTRA_THICK_LIGHT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "BLUR_UI_LOW_ULTRA_THICK_DARK"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo;->BLUR_UI_LOW_ULTRA_THICK_DARK:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "BLUR_UI_MEDIUM_THICK_LIGHT"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo;->BLUR_UI_MEDIUM_THICK_LIGHT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "BLUR_UI_MEDIUM_THICK_DARK"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo;->BLUR_UI_MEDIUM_THICK_DARK:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "BLUR_UI_MEDIUM_ULTRA_THICK_LIGHT"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo;->BLUR_UI_MEDIUM_ULTRA_THICK_LIGHT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "BLUR_UI_MEDIUM_ULTRA_THICK_DARK"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo;->BLUR_UI_MEDIUM_ULTRA_THICK_DARK:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "BLUR_UI_HIGH_ULTRA_THICK_LIGHT"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo;->BLUR_UI_HIGH_ULTRA_THICK_LIGHT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "BLUR_UI_HIGH_ULTRA_THICK_DARK"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo;->BLUR_UI_HIGH_ULTRA_THICK_DARK:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "BLUR_UI_MEDIUM_ULTRA_THIN_LIGHT"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo;->BLUR_UI_MEDIUM_ULTRA_THIN_LIGHT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "BLUR_UI_MEDIUM_ULTRA_THIN_DARK"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo;->BLUR_UI_MEDIUM_ULTRA_THIN_DARK:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    return-void
.end method

.method public static getBlurInfoClass()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo;->sSemBlurInfoClass:Ljava/lang/Class;

    return-object v0
.end method
