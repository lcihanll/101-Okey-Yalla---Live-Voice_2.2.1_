.class public Lcom/tencent/tmediacodec/hook/THookTextureView;
.super Landroid/view/TextureView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tmediacodec/hook/THookTextureView$a;
    }
.end annotation


# static fields
.field private static a:Lcom/tencent/tmediacodec/hook/THookTextureView$a;


# instance fields
.field private b:Landroid/view/TextureView$SurfaceTextureListener;

.field private final c:Landroid/view/TextureView$SurfaceTextureListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/tmediacodec/hook/THookTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/tmediacodec/hook/THookTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/tencent/tmediacodec/hook/THookTextureView$1;

    invoke-direct {p1, p0}, Lcom/tencent/tmediacodec/hook/THookTextureView$1;-><init>(Lcom/tencent/tmediacodec/hook/THookTextureView;)V

    iput-object p1, p0, Lcom/tencent/tmediacodec/hook/THookTextureView;->c:Landroid/view/TextureView$SurfaceTextureListener;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/tencent/tmediacodec/hook/THookTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/tmediacodec/hook/THookTextureView;)Landroid/view/TextureView$SurfaceTextureListener;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tmediacodec/hook/THookTextureView;->b:Landroid/view/TextureView$SurfaceTextureListener;

    return-object p0
.end method

.method static synthetic a()Lcom/tencent/tmediacodec/hook/THookTextureView$a;
    .locals 1

    sget-object v0, Lcom/tencent/tmediacodec/hook/THookTextureView;->a:Lcom/tencent/tmediacodec/hook/THookTextureView$a;

    return-object v0
.end method

.method public static setHookCallback(Lcom/tencent/tmediacodec/hook/THookTextureView$a;)V
    .locals 0

    sput-object p0, Lcom/tencent/tmediacodec/hook/THookTextureView;->a:Lcom/tencent/tmediacodec/hook/THookTextureView$a;

    return-void
.end method


# virtual methods
.method public final setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tmediacodec/hook/THookTextureView;->b:Landroid/view/TextureView$SurfaceTextureListener;

    iget-object p1, p0, Lcom/tencent/tmediacodec/hook/THookTextureView;->c:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-super {p0, p1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method
