.class Lio/agora/rtc/video/ViEAndroidGLES20$2;
.super Ljava/lang/Object;
.source "ViEAndroidGLES20.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/video/ViEAndroidGLES20;->releaseOpenGLResource()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc/video/ViEAndroidGLES20;


# direct methods
.method constructor <init>(Lio/agora/rtc/video/ViEAndroidGLES20;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20$2;->this$0:Lio/agora/rtc/video/ViEAndroidGLES20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lio/agora/rtc/video/ViEAndroidGLES20;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseOpenGLResource, value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/agora/rtc/video/ViEAndroidGLES20$2;->this$0:Lio/agora/rtc/video/ViEAndroidGLES20;

    invoke-static {v2}, Lio/agora/rtc/video/ViEAndroidGLES20;->access$300(Lio/agora/rtc/video/ViEAndroidGLES20;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/agora/rtc/video/ViEAndroidGLES20$2;->this$0:Lio/agora/rtc/video/ViEAndroidGLES20;

    invoke-static {v3}, Lio/agora/rtc/video/ViEAndroidGLES20;->access$400(Lio/agora/rtc/video/ViEAndroidGLES20;)[I

    move-result-object v3

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/agora/rtc/video/ViEAndroidGLES20$2;->this$0:Lio/agora/rtc/video/ViEAndroidGLES20;

    invoke-static {v3}, Lio/agora/rtc/video/ViEAndroidGLES20;->access$400(Lio/agora/rtc/video/ViEAndroidGLES20;)[I

    move-result-object v3

    const/4 v5, 0x1

    aget v3, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/agora/rtc/video/ViEAndroidGLES20$2;->this$0:Lio/agora/rtc/video/ViEAndroidGLES20;

    invoke-static {v2}, Lio/agora/rtc/video/ViEAndroidGLES20;->access$400(Lio/agora/rtc/video/ViEAndroidGLES20;)[I

    move-result-object v2

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/agora/rtc/video/ViEAndroidGLES20$2;->this$0:Lio/agora/rtc/video/ViEAndroidGLES20;

    invoke-static {v2}, Lio/agora/rtc/video/ViEAndroidGLES20;->access$500(Lio/agora/rtc/video/ViEAndroidGLES20;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20$2;->this$0:Lio/agora/rtc/video/ViEAndroidGLES20;

    invoke-static {v0}, Lio/agora/rtc/video/ViEAndroidGLES20;->access$300(Lio/agora/rtc/video/ViEAndroidGLES20;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20$2;->this$0:Lio/agora/rtc/video/ViEAndroidGLES20;

    invoke-static {v0}, Lio/agora/rtc/video/ViEAndroidGLES20;->access$300(Lio/agora/rtc/video/ViEAndroidGLES20;)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    :cond_0
    iget-object v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20$2;->this$0:Lio/agora/rtc/video/ViEAndroidGLES20;

    invoke-static {v0}, Lio/agora/rtc/video/ViEAndroidGLES20;->access$400(Lio/agora/rtc/video/ViEAndroidGLES20;)[I

    move-result-object v0

    aget v0, v0, v4

    if-lez v0, :cond_1

    const/4 v0, 0x3

    iget-object v1, p0, Lio/agora/rtc/video/ViEAndroidGLES20$2;->this$0:Lio/agora/rtc/video/ViEAndroidGLES20;

    invoke-static {v1}, Lio/agora/rtc/video/ViEAndroidGLES20;->access$400(Lio/agora/rtc/video/ViEAndroidGLES20;)[I

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    :cond_1
    iget-object v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20$2;->this$0:Lio/agora/rtc/video/ViEAndroidGLES20;

    invoke-static {v0}, Lio/agora/rtc/video/ViEAndroidGLES20;->access$500(Lio/agora/rtc/video/ViEAndroidGLES20;)I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20$2;->this$0:Lio/agora/rtc/video/ViEAndroidGLES20;

    invoke-static {v0}, Lio/agora/rtc/video/ViEAndroidGLES20;->access$500(Lio/agora/rtc/video/ViEAndroidGLES20;)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    :cond_2
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lio/agora/rtc/video/ViEAndroidGLES20;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "glDelete error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
